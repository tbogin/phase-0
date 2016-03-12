#Iterate through array
#Remove an element if its position is first or last until array.length == 1
#Return that number

 #I want 79
def median(array)
  return nil if array.length % 2 == 0

  if array.length % 2 == 1
    until array.length == 1
    array.each{|n| array.delete(n) if n == array.first || n == array.last}
    end
  end
  array
end
p median([1,2,44,66,79,1,2,5,688]) #79