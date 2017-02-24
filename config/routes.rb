Rails.application.routes.draw do
	devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }, :controllers => { registrations: 'registrations' }

	resources :users do 
        member do
            get '/users/:id', to: 'users#show'
        end
        collection do
        end
        resources :submissions
    end

    # resources :users do
    #   resources :submissions
    # end

    devise_scope :user do
        unauthenticated :user do
          root :to => 'devise/sessions#new', as: :unauthenticated_root
        end
    end

    namespace :api do
        namespace :v1 do
            resources :users, only: [] do
                collection do 
                    post :sign_out_user
                    get :validate_user_token
                    get :save_user_response
                    get :save_final_response
                end
            end
        end
    end

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
