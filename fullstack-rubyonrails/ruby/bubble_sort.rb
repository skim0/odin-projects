# Bubble Sort from The Odin Project
# https://www.theodinproject.com/lessons/ruby-bubble-sort

# input_array: array of int values
# output_array: array of input array's nodes arranged in incremental manner

def bubble_sort(input_array)
    
    output_array = input_array
    
    array_length = input_array.length
    position_range = (0...array_length-1)

    array_ordered = false
    while (array_ordered == false)
    
        array_ordered = true
        for position in position_range
            value_a = output_array[position]
            value_b = output_array[position+1]
            
            if value_a > value_b
                array_ordered = false
                output_array[position+1] = value_a
                output_array[position] = value_b
            end
        end
    end

    return output_array
end
