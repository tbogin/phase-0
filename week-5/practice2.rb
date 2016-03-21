# def acct(array_of_names)
# 	big_array = []
# 	array_of_names.each_slice(5){|names| big_array << names}
	
# 	if big_array.any?{|subarray| subarray.length < 5}
# 	subarray = big_array.select{|subarray| subarray.length < 5}.flatten
# 	big_array.map do |extras|
# 		break if subarray.empty?
# 		extras << subarray.shift
# 		end
# 	end
# end
# p acct(["Ted","Bob","Linda","Brandon","Gus","Ben","Jordan"])

# def acct(array_of_names)
  
# end
# p acct(["Ted","Bob","Linda","Brandon","Gus","Ben","Jordan"])

(1..15).each do |number|
  
  if number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  elsif number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
  else
    p number
  end
end