class Faalis::Media::Dashboard::ImagesController < Dashboard::ApplicationController
  engine 'Faalis::Media::Engine'

  in_index do |i|
    i.attributes :caption, :image_url, :image_markdown, :image_file_size, :created_at
  end
end
