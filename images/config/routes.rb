Refinery::Core::Engine.routes.draw do
  match '/system/images/*dragonfly', :to => Dragonfly[:refinery_images]

  namespace :admin, :path => 'refinery' do
    resources :images, :except => :show do
      get :insert, :on => :collection
    end
  end
end
