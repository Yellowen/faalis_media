class Faalis::Media::Image < ActiveRecord::Base
  has_attached_file(:image,
                    styles: { thumb: ['150x150', :png] },
                    url: '/:class/:attachment/:style/:basename.:extension',
                    path: ':rails_root/public/:class/:attachment/:style/:basename.:extension')

  validates_attachment(:image,
                       content_type: { content_type: /\Aimage/ },
                       size: { in: Faalis::Media::Engine.image_size_limitation })

  def image_url
    image.url
  end

  def image_markdown
    "![#{caption}](#{image_url} \"#{subcaption}\")"
  end
end
