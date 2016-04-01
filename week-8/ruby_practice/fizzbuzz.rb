def super_fizzbuzz(array_of_nums)
  buzz_array = []
  
  array_of_nums.each do |number|
    if number % 15 == 0
      buzz_array << "fizzbuzz"
    elsif number % 3 == 0
      buzz_array << "fizz"
    elsif number % 5 == 0
      buzz_array << "buzz"
    else
      buzz_array << number
    end
  end
  buzz_array
end

p super_fizzbuzz([3,5,15,2]) 