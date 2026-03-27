class Receipt
    def initialize(items,calculator)
        @items = items
        @calculator = calculator
    end
    def print
        total_tax = 0
        total_price = 0

        @items.each do |item|
            tax = @calculator.calculate_tax(item)
            final_price = item.price + tax

            total_tax += tax
            total_price += final_price

            puts "1 #{item.name}: #{'%.2f' % final_price}"
        end
        puts""
        puts "Sales Taxes: #{'%.2f' % total_tax}"
        puts "Total: #{'%.2f' % total_price}"
    end
end


