require_relative 'lib/item'
require_relative 'lib/tax_calculator'
require_relative 'lib/receipt'
=begin
item1 = Item.new("book", 12.49,"book" ,false)
item2 = Item.new("music CD", 14.99, "other", false)
item3 = Item.new("chocolate bar", 0.85, "food", false)
items = [item1, item2, item3]
calculator = TaxCalculator.new
receipt = Receipt.new(items, calculator)
receipt.print 
=end
items = []
puts "Enter the number of items:"
n = gets.chomp.to_i

n.times do
  puts "Enter the name of items:"
  name = gets.chomp
  puts "Enter the price of items:"
  price = gets.chomp.to_f
  puts "Enter the category of items (book, food, medical, other):"
  category = gets.chomp
  puts "Is the item imported? (yes/no):"
  imported = gets.chomp.downcase == "yes"
  item = Item.new(name, price, category, imported)
  items << item
end
calculator = TaxCalculator.new
receipt = Receipt.new(items, calculator)
receipt.print
#end here code 
# The above code defines a simple command-line application that allows the user to input details about items, calculates the taxes using the TaxCalculator class, and prints a receipt using the Receipt class. The user is prompted to enter the number of items, and for each item, they provide the name, price, category, and whether it is imported. The application then processes this information and generates a receipt with the calculated taxes and total price.  


 