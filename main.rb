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
#end


 