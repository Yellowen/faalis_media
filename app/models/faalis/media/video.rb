class Faalis::Media::Video < ActiveRecord::Base
  has_attached_file(:video,
                    styles: { thumb: ['150x150', :png] },
                    url: '/:class/:attachment/:style/:basename.:extension',
                    path: ':rails_root/public/:class/:attachment/:style/:basename.:extension')

  validates_attachment(:video,
                       content_type: { content_type: /\Avideo/ },
                       size: { in: Faalis::Media::Engine.video_size_limitation })

end
