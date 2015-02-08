require "hashie"

module Vimeo
  class Base < ::Hashie::Mash
    def initialize client, attrs = {}
      @client = client
      super attrs
    end

    private
    def get_id
      id || uri.match(/(\d+)/)[0]
    end
  end
end