class ContactsController < ApplicationController

  def all_contact
     

     @contact = Contact.all 
     
   
   render "all_contact.json.jbuilder"

  end


  def first_contact
    
    @f_contact = Contact.first
  

   render "f_contact.json.jbuilder"
  
  end




end
