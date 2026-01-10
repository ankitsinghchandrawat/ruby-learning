# example of class variables in a Ruby class
class User
    @@user_count = 0  # class variable to keep track of number of users

    def initialize(name, age, email)
        @name = name
        @age = age
        @email = email
        @@user_count += 1  # increment user count when a new user is created
    end

    def show_details
        puts "Name: #{@name}"
        puts "Age: #{@age}"
        puts "Email: #{@email}"
    end

    def self.user_count
        puts "Total Users: #{@@user_count}"
    end
end

# create objects of the User class
user1 = User.new("Ankit", 25, "Ankit@gmail.com")
user2 = User.new("Riya", 22, "Riya@gmail.com")
# call the show_details method to display user information
user1.show_details
user2.show_details
# call the class method to display total user count
User.user_count
