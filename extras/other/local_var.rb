#local variable example
def login_user(user_input_password)
  stored_password = "Ankit@123"
  if user_input_password == stored_password
    puts "Login Successful"
  else
    puts "Login Failed"
  end
end
# take user input for password
puts "Enter your password:"
user_input_password = gets.chomp 
login_user(user_input_password)