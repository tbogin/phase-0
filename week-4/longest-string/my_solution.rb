# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  long = list_of_words[0]
  i = 0
  while i < list_of_words.length
    long = list_of_words[i] if list_of_words[i].length > long.length
    i += 1
  end
  long
end

p longest_string(["Horse","Goat","Osprey"])