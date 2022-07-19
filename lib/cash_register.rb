require "pry"
class CashRegister
    attr_accessor :discount,:total,:items
    def initialize(*discount)
        @total=0
        @discount=discount[0]
        @items=[]
    end

    def total
        @total
    end
    def total=(total)
        @total+=total
    end


    def add_item(title,price,*quantity)
        # binding.pry
        if quantity!=[]
        self.total=(price*quantity[0])
       else
           self.total=(price)
       end
    end

    def apply_discount
        if @discount.class.to_s=="Integer"
        price_after_disc=@total*(100-@discount)/100
        @total=price_after_disc
        # binding.pry
       "After the discount, the total comes to $#{@total}."
        else
        "There is no discount to apply."
        end
    end

    def items(item,price,*args)
        @items.push(item)
        @items
        # binding.pry
    end
    def void_last_transaction
    
    end
end
# reg=CashRegister.new(20)
# # p reg.discount
# reg.add_item("sikuma",10)
# reg.add_item("ugali",12)
# reg.add_item("soda",12)
# reg.items("sikuma",20)
# reg.items("Item add",20)

# p reg.apply_discount