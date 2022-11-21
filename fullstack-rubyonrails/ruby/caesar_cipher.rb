# Caesar cipher from The Odin Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher


def shift_character(char_input, shift_number)

    # alphabet sequence, lower and upper cases separate
    alphabet_lowercase = "abcdefghijklmnopqrstuvwxyz"
    alphabet_uppercase = alphabet_lowercase.upcase     
    index_lowercase = alphabet_lowercase.index(char_input)
    index_uppercase = alphabet_uppercase.index(char_input)
    
    # length for modulus
    alphabet_length = alphabet_lowercase.length

    # check if shift_number is integer
    shift_number_is_integer = shift_number.is_a?Integer

    if index_lowercase != nil && shift_number_is_integer
        position = index_lowercase + shift_number
        return alphabet_lowercase[position%alphabet_length]
    elsif index_uppercase != nil && shift_number_is_integer
        position = index_uppercase + shift_number
        return alphabet_uppercase[position%alphabet_length]
    else
        # return original char for other conditions
        return char_input
    end
end

def caesar_cipher(string_input, shift_number)
    string_output = ""
    # for each character (ch): shift_character by shift_number; and add to string_output
    string_input.each_char { |ch| string_output += shift_character(ch, shift_number) }
    return string_output
end
