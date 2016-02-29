Faalis::Media::Engine.routes.draw do
  in_dashboard do
    scope :media do
      resources :files
      resources :videos
      resources :images
    end
  end
end
