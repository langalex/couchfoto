ActionController::Routing::Routes.draw do |map|
  
  map.resources :photos, collection: {tags: :get}
  
  map.root controller: "photos", action: 'new'
end
