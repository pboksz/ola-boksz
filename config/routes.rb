Rails.application.routes.draw do
  get '/clock' => 'home#clock'
  get 'sitemap(.xml)' => 'home#sitemap', format: 'xml'

  root 'home#index'
end
