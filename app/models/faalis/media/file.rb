class Faalis::Media::File < ActiveRecord::Base
  has_attached_file(:file,
                    styles: { thumb: ['150x150', :png] },
                    url: '/:class/:attachment/:style/:basename.:extension',
                    path: ':rails_root/public/:class/:attachment/:style/:basename.:extension')

  validates_attachment(:file,
                       content_type: { content_type: /.*/ },
                       size: { in: Faalis::Media::Engine.file_size_limitation })

end
