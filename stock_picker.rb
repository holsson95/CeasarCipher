def stock_picker(array)
    #creates an array of possible stock pairs
    pairs = array.combination(2).select{|x,y| x<y}
    #find the profit of each pair
    profit = pairs.map{|pair| pair[1]-pair[0]}
    #get the index for that profit, profit index will also be the same for the pairs array
    profit_index = profit.each_with_index.max[1] 
    #store the min and max amounts
    profit_min  = pairs[profit_index][0]
    profit_max = pairs[profit_index][1]
    #result will be the array index for each min and max profit number
    result = [array.index(profit_min),array.index(profit_max)]
    p result
  end 
  
  stock_picker([17,3,6,9,15,8,6,1,10])