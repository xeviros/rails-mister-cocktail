Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :cocktails, only: [:new, :index, :show, :create] do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]

    root to: "cocktails#index"
  end
end
