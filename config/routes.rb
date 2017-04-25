Rails.application.routes.draw do
# CREATE ROUTES
get("/photos/new", { :controller => "photos", :action => "new_form" })
get("/create_photo", { :controller => "photos", :action => "create_row" })

# READ ROUTES
get("/photos/:the_id_number", { :controller => "photos", :action => "show" })
get("/photos", { :controller => "photos", :action => "index" })

# UPDATE ROUTES
get("/photos/:the_id/edit", { :controller => "photos", :action => "edit_form" })
get("/update_photo/:the_id", { :controller => "photos", :action => "update_row" })

# DELETE ROUTES




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
