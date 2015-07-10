require 'uri'

module Vimeo
  module Helpers
    def perform_get_with_object(path, options, klass)
      perform_request_with_object(:get, path, options, klass)
    end

    def perform_get(path, options = {})
      perform_request(:get, path, options, nil)
    end

    def perform_patch(path, body, options = {})
      perform_request(:patch, path, options, body)
    end

    def perform_put(path, body, options = {})
      perform_request(:put, path, options)
    end

    def perform_delete(path, options = {})
      perform_request(:delete, path, options, nil)
    end

    def perform_post(path, body, options = {})
      perform_request(:post, path, options, body)
    end

    def perform_request(method, path, options, body)
      client = get_client_object
      Vimeo::Request.new(client, method, path, options, body).perform
    end

    def perform_request_with_object(method, path, options, klass)
      client = get_client_object
      response = perform_request(method, path, options, {})
      if response_is_collection? response
        build_collection_from_response(response, klass, options)
      else
        klass.new response.merge(client: client)
      end
    end

    def post_upload file, ticket
      file = Faraday::UploadIO.new(file.path, file.content_type)
      request = { file_data: file }

      uri  = URI(ticket.upload_link_secure)
      url  = "#{uri.scheme}://#{uri.host}"
      path = ticket.upload_link_secure[url.length..-1]

      conn = Faraday.new(url) do |f|
        f.request :multipart
        f.request :url_encoded
        f.adapter :net_http
      end

      resp = conn.post(path, request)
      raise StandartError.new resp.body unless resp.env.status == 302
      get_video_id_from_upload resp
    end

    def get_video_id_from_upload resp
      uri = URI(resp.env.response_headers['location'])
      url  = "#{uri.scheme}://#{uri.host}"
      path = resp.env.response_headers['location'][url.length..-1]
      conn = Faraday.new(url: url) do |faraday|
        faraday.request  :url_encoded
        faraday.adapter  :net_http
      end
      response = conn.get path

      query = Rack::Utils.parse_query URI(response.env.response_headers['location']).query
      query['video_uri'].scan(/\d+/).first
    end

    def build_collection_from_response(response, klass, options)
      client = get_client_object
      raw_items = response.fetch(:data)
      items = raw_items.collect do |i|
        klass.new i.merge(client: client)
      end

      keys    = [:page, :per_page, :pages]
      values  = response.values_at(:page, :per_page, :paging)

      page_options = Hash[keys.zip(values)]
      options = options.merge(page_options)

      Vimeo::Collection.new(client, items, klass, options)
    end

    def response_is_collection? response
      !!response.include?(:page)
    end

    def get_client_object
      @client || self
    end
  end
end
