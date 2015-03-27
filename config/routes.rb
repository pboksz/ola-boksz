Rails.application.routes.draw do
  get 'sitemap(.xml)' => 'home#sitemap', format: 'xml'

  root 'home#index'
end
