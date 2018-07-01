Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/all_contact_url" => "contacts#all_contact"


   get "/f_contact_url" => "contacts#first_contact"




end
