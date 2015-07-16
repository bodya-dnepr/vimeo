module Vimeo
  module Endpoints
    module Videos
      include Vimeo::Helpers

      ##
      # Get a video
      #
      # *video_id:* the video's unqiue id
      def video video_id
        perform_get_with_object("/videos/#{video_id}", {}, Vimeo::Entities::Video)
      end

      def search_videos query, options = {}
        available = [:page, :per_page, :sort, :direction, :filter]
        options   = options.keep_if {|k,v| available.include?(k) && !v.nil? }
        options.merge! query: query
        perform_get_with_object("/videos", options, Vimeo::Entities::Video)
      end
    end
  end
end
