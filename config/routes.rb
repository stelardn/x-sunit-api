Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :survivors do
      resources :abductions
    end
  end

end
