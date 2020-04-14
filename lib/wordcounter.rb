dict = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
file = File.open("swearWords.txt")
file_data = file.readlines.map(&:chomp)

file2 = File.open("t8.shakespeare.txt")
text_shakespeare = file2.read

def count_em(string, substring)
    string.scan(/(?=#{substring})/).count
end

def word_counter(string, dictionnary)
    output = {}
    dictionnary.length.times do |i|

        if count_em(string, dictionnary[i]) != 0
            output[dictionnary[i]]=count_em(string, dictionnary[i])
        end
    end
    puts output
end

word_counter(text_shakespeare, file_data)

