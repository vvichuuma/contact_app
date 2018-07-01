

# json.first_name  @contact.first_name

# json.last_name  @contact.last_name

# json.email  @contact.email

# json.phone_number  @contact.phone_number

json.array! @contacts.each do |cc|

   json.id cc.id
   json.first_name cc.first_name
   json.last_name cc.last_name
   json.email cc.email
   json.phone_number cc.phone_number


end