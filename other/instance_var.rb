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
# here we are using instance variables (@name, @age, @email) to store user information that is accessible across different methods within the User class. and in simple language we can say by comaparing other programming language like java,c++ instance variable is same as  member variable in those programming language and also here we used @ to declare instance variable in ruby. and the scope of instance variable is within the object of the class.

