#YOUR CODE GOES HERE

# if
def min_coins(number)
  coins = [1, 5, 10, 25, 50, 100]
  coins = coins.reverse
  coin_count = 0
  i = 0
  total = 0
  coin_array=[]

  while total <= number
    if total == number
      puts "You reached the number: #{total}"
      break
    elsif coins[i] + total <= number
      total += coins[i]
      coin_count += 1
      coin_array<< coins[i]
      # puts total
    else
      i += 1
    end
  end
  puts coin_array.inspect
  puts "Coin Count: #{coin_count}"
end

min_coins(35)
min_coins(37)
min_coins(101)
min_coins(249)
