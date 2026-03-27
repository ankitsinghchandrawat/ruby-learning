class TaxCalculator
    def calculate_tax(item)
        tax = 0
        
        if item.category != "book" && item.category != "food" && item.category != "medical"
            tax += item.price * 0.10
        end
        
        if item.imported
            tax += item.price * 0.05
        end
        tax = (tax * 20).ceil / 20.0

        tax
    end
end