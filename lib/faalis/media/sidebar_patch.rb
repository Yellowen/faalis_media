class Faalis::Dashboard::Models::Sidebar
  def media_entries
    menu I18n.t('faalis.media.dashboard.media'), icon: 'fa fa-files-o' do
        item(I18n.t('faalis.media.dashboard.images'),
             model: 'Faalis::Media::Image',
             url: Faalis::Media::Engine.routes.url_helpers.dashboard_images_path)

        item(I18n.t('faalis.media.dashboard.videos'),
             model: 'Faalis::Media::Video',
             url: Faalis::Media::Engine.routes.url_helpers.dashboard_videos_path)

        item(I18n.t('faalis.media.dashboard.files'),
             model: 'Faalis::Media::File',
             url: Faalis::Media::Engine.routes.url_helpers.dashboard_files_path)
      end
  end
  end
