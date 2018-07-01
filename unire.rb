require "unirest"

system "clear"

while 3 > 0

puts "Please enter an option or press q to quit"
input = gets.chomp
if input == "q"
   break

elsif input == "1"

  response = Unirest.get("http://localhost:3000/f_contact_url")


  con = response.body
  puts JSON.pretty_generate(con)

elsif input == "2"

   response = Unirest.get("http://localhost:3000/all_contact_url")

   con = response.body
   puts JSON.pretty_generate(con)

 else

  puts "Unknown Option"

end
    
end    
