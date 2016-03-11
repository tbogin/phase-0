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
The most interesting and difficult part was finding the right methods that would create a working program

Do you feel you are improving in your ability to write pseudocode and break the problem down?
The steps are becoming more intuitive as I write more code

Was your approach for automating this task a good solution? What could have made it even better?
I wanted to split my list of names argument into subarrays, and then portion the remaining names into existing subarrays

What data structure did you decide to store the accountability groups in and why?
Arrays

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
My refactored solution portions remaining names into existing subarrays. From this challenge, I learned each_slice, any?, empty?, and flatten

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




