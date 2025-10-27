Rottenpotatoes::Application.routes.draw do
    resources :movies do
        get 'similar', on: :member
    end
  # Add new routes here

  root to: redirect('/movies')
end
