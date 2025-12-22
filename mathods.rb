def say_something # Method definition in Ruby
    puts "Hello, this is a method in Ruby!" # Output statement
end # end of method
say_something # Method call to execute the method

# --- IGNORE ---
def multiply(a, b) # Method with parameters
    result = a * b
    return result # Return statement
end
puts multiply(5, 10) # Calling method with arguments

# --- IGNORE ---
def displaystring(*args) # Method with variable number of arguments
    args.each do |str| # Iterating through each argument
        puts str 
    end # end of iteration
end
displaystring("Ruby", "is", "fun!") # Calling method with multiple arguments

# --- IGNORE ---

def add(num1, num2)   # Method to add two numbers
  num1 + num2
end

alias sum_numbers add   # Creating an alias for the method

puts sum_numbers(3, 7)
puts add(3, 7)


# day ends here