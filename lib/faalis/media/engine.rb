

module Faalis
  module Media
    class Engine < ::Rails::Engine
      isolate_namespace Faalis::Media
      engine_name 'faalis_media'

      def self.setup
        yield self
      end

      mattr_accessor :image_size_limitation
      @@image_size_limitation = 0..(5 * 1024).kilobytes

      mattr_accessor :video_size_limitation
      @@video_size_limitation = 0..(50 * 1024).kilobytes

      mattr_accessor :file_size_limitation
      @@file_size_limitation = 0..(50 * 1024).kilobytes

    end
  end
end
