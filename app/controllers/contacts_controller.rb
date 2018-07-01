class ContactsController < ApplicationController

  def index
     

     @contacts = Contact.all 
     
   
   render "index.json.jbuilder"

  end


  def create
    @contact = Contact.new(

  first_name: params["first"],

  last_name: params["last"],

  email: params["email"],

  phone_number: params["number"]


      )

  @contact.save

  render "show.json.jbuilder"

  end




  def show 
   @contact = Contact.find_by(id:params["id"])

   render "show.json.jbuilder"


  end


  def update
    @contact = Contact.find_by(id: params["id"])


    @contact.first_name = params["first"] || @contact.first_name


    
    @contact.last_name = params["last"] || @contact.last_name


    @contact.email = params["email"] || @contact.email

    @contact.phone_number = params["number"] ||@contact.phone_number


    @contact.save

    render "show.json.jbuilder"


  end


 def destroy
  @contact = Contact.find_by(id:params["id"])

   @contact.destroy

   render json:{message:"The contact has been deleted"}



 end

end
