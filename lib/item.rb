=begin
i want to make a bill system for a shop adding tax
=end
require_relative 'tax_calculator'
require_relative 'receipt'
class Item
   
    def initialize(name, price,category,imported)
        @name = name
        @price = price
        @category = category
        @imported = imported
    end
    def name
        @name
    end
    def price
        @price
    end
    def category
        @category
    end
    def imported
        @imported
    end
    def show_details
        puts "Item: #{@name}, Price: #{@price}"
    end
end




