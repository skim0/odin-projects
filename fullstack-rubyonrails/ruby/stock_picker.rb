# Stock Picker from The Odin Project
# https://www.theodinproject.com/lessons/ruby-stock-picker

# input_array: array of int 'prices', position represents 'day'
# output_array: array of two int 'days' where difference between [0] and [1] is max

def stock_picker(input_array)
    
    # to be updated for each computation
    max_difference = 0
    max_buy = 0
    max_sell = 0

    array_length = input_array.length
    position_buy_range = (0...array_length)

    for position_buy in position_buy_range
        position_sell_range = (position_buy...array_length)
        
        for position_sell in position_sell_range
            price_buy = input_array[position_buy]
            price_sell = input_array[position_sell]
            difference = price_sell - price_buy

            if difference > max_difference
                max_buy = position_buy
                max_sell = position_sell
                max_difference = difference
            end
        end
    end

    return [max_buy, max_sell]
end
