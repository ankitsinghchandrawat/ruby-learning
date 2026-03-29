require_relative 'lib/item'
require_relative 'lib/tax_calculator'
require_relative 'lib/receipt'

item1 = Item.new("book", 12.49,"book" ,false)
item2 = Item.new("music CD", 14.99, "other", false)
item3 = Item.new("chocolate bar", 0.85, "food", false)
 items = [item1, item2, item3]
 calculator = TaxCalculator.new
 receipt = Receipt.new(items, calculator)
 receipt.print