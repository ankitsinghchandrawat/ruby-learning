# Example of instance variables in a Ruby class
class User
    def initialize(name,age,email)
        @name = name
        @age = age
        @email = email
    end
    def show_details
        puts "Name: #{@name}"
        puts "Age: #{@age}"
        puts "Email: #{@email}"
    end
end
# create an object of the user class
user1 = User.new("Ankit",25,"Ankit@gmail.com")
# call the show_details method to display user information
user1.show_details
