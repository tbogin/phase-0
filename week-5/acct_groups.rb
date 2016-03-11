#Pseudocode
#Slice an array of names into subarrays of equal length
#Portion any remaining items from original array into subarrays until original arary is empty

#Initial solution
def acct(array_of_names)
	array_of_names.each_slice(5) {|names| p names}
	
end
p acct(["Ted","Bob","Linda","Brandon","Gus","Ben","Jordan"])
#Initial solution doesn't sort remainders into larger arrays

#Refactored solution
#Create a new array
#Slice original array, and push subarrays into new array
#Iterate through 2D array
#If array[i] > array[i+1], concatenate those arrays
#Iterate through 2D array (each_slice(array.length)), printing subarrays

def acct(array_of_names)
	big_array = []
	array_of_names.each_slice(5){|names| big_array << names}
	
	if big_array.any?{|subarray| subarray.length < 5}
	subarray = big_array.select{|subarray| subarray.length < 5}.flatten
	big_array.map do |extras|
		break if subarray.empty?
		extras << subarray.shift
		end
	end

end
p acct(["Ted","Bob","Linda","Brandon","Gus","Ben","Jordan"])


=begin
What was the most interesting and most difficult part of this challenge?
The most interesting and difficult part of the challenge was converting my pseudocode a working method.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes!

Was your approach for automating this task a good solution? What could have made it even better?
I wanted to:
1) Slice the original list of names into equally sized subarrays
2) Add subarrays to an array, making a 2D array
3)Iterate through 2D array for subarrays with fewer items than the rest (remainders)
4) Apportion smaller subarray items into another subarray
Automating this task would have been better with an in-built method for sorting remainders.

What data structure did you decide to store the accountability groups in and why?
A list of names (strings)

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
A few new in-built methods
=end



=begin
def acct(array_of_names)
	big_array = []
	i = 0
	array_of_names.to_a.each_slice(5) do |names|
		big_array.push(names.to_a)
		p big_array

		while i < big_array.length
			if big_array[i].length > big_array[i+1].length
				big_array[i].concatenate(big_array[i+1])
				i += 1
			end
			big_array.each do |subarray|
				p subarray
			end
		end
	end
end
=end
=begin
def acct(array_of_names)
	big_array = []
	i = 0
	array_of_names.to_a.each_slice(5) do |names|
		big_array.push(names.to_a)
		p big_array
	end
	while i < big_array.length
		if big_array[i].length > big_array[i+1].length
			big_array[i].push(big_array[i+1]
			i += 1
		end
	end
	big_array.each do |subarray|
		p subarray
	end
end
=end




