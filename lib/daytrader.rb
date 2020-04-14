def day_trader(array)
    buy = 0
    sell = 0
    profit = 0
    profits_list = []

    array.length.times do |i|
        buy = array[i]
        (array.length-1-i).times do |k|
            sell = array[k+i+1]
            profit = sell - buy
            profits_list << profit
            end
        end

    max_value = 0
    max_value = profits_list.max

    buy = 0
    sell = 0

    array.length.times do |i|
        buy = array[i]
        (array.length-1-i).times do |k|
            sell = array[k+i+1]
            profit = sell - buy
            if profit == max_value
                print [array.index(array[i]), array.index(array[k+i+1])]
            end

            end
        end

end


day_trader([5, 2, 7, 14, 20, 32, 3, 4, 0])
