

module Faalis
  module Media
    class Engine < ::Rails::Engine
      isolate_namespace Faalis::Media
      engine_name 'faalis_media'
    end
  end
end
