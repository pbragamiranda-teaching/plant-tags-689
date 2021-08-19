Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: :destroy do 
    resources :plant_tags, only: [ :new, :create ]
  end 
end


# plants_tag#new
# localhost:3000/plant/:plant_id/plants_tag/new