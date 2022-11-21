# Substrings from The Odin Project
# https://www.theodinproject.com/lessons/ruby-sub-strings

# input_string: string, can have multiple words between whitespace and/or punctuations
# input_array: array of strings, each string is a word
# output_hash: a hash ('dictionary' in ruby) in which:
#   key: a word from input_array
#   value: an int indicating its frequency in input_string
#   key-value pair should exist for every non-zero value
def substrings(input_string, input_array)
    output_hash = {}

    for word in input_array
        frequency = input_string.scan(word).length

        if frequency > 0
            # insert to hash:
            # key = var 'word'
            # value = var 'frequency'
            output_hash[word]=frequency
        end
    end

    return output_hash
end
