def stock_picker(stocks)
    days = [0,1]
    profit = stocks[1]-stocks[0]
    min_index = 0

    stocks.each_with_index do |value, index|
        if value - stocks[min_index] > profit
            profit = value - stocks[min_index]
            days[0] = min_index
            days[1] = index
        end

        min_index = index if value < stocks[min_index]
    end

    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])