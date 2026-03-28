require_relative 'lib/item'
require_relative 'lib/tax_calculator'
require_relative 'lib/receipt'

puts "Enter items (type 'done' to finish):"

items = []

while true
  input = gets.chomp
  break if input == "done"

  parts = input.split(" ")

  quantity = parts[0].to_i
  price = parts[-1].to_f
  name = parts[1..-3].join(" ")

  category = "other"
  if name.include?("book")
    category = "book"
  elsif name.include?("chocolate")
    category = "food"
  elsif name.include?("pill")
    category = "medical"
  end

  imported = name.include?("imported")

  item = Item.new(name, price, category, imported)
  items << item
end

calculator = TaxCalculator.new
receipt = Receipt.new(items, calculator)

receipt.print