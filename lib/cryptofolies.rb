puts 99.chr
puts "b".ord
puts "c".ord
puts "d".ord
puts "z".ord
puts "!".ord

def caesar_cipher(string, skip=2)
    
    array = string.split(//)
    array.length.times do |i|
        string_number = 0
        string_number = array[i].ord
        if array[i] == " "
            string_number -= skip
        end
        if string_number + skip >= 122
            string_number = "a".ord
            string_number += skip
        else
            string_number += skip
        end
        array[i] = string_number.chr
    end
    string = array.join
    puts string
end

caesar_cipher("What a string!", 5)