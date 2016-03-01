# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase 
# Code above has the error. Code below should run.

cartmans_phrase = "Screw you guys " + "I'm going home."  

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb

# 2. What is the line number where the error occurs?
# 8 (hence the 8 after the file name)

# 3. What is the type of error message?
# syntax error

# 4. What additional information does the interpreter provide about this type of error?
# The unexpected operator (=), and what was expected at the end of the method (end).

# 5. Where is the error in the code?
# The =

# 6. Why did the interpreter give you this error?
# It can't figure out that a variable was assigned to Cartman's catchphrase.

# --- error -------------------------------------------------------

south_park

# 1. What is the line number where the error occurs?
#43
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#south_park is not a key word in Ruby,

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
#58
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#Method name and parameters were not assigned to a variable.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#77
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#Method was called with an argument it doesn't have. Can only return puts phrase.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#96
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#Method was called without an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#117
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#Method was called without its set arguments.

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#132
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#Can't multiply an integer and a string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#147
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#20/0 not a real number.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#163
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#'require' is a key word in Ruby, not the name of a variable (which here lacks =)


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read? The first error provided the learning curve.

How did you figure what the issue with the error was? I knew that every variable is assigned left to right.
I also knew that all programs require an 'end'

Were you able to determine why each error message happened based on the code? Yes.

When you encounter errors in the future, what process will you follow to help you debug?
I will carefully read the error message, locate the line with the error, and keep ruby's recommendations in mind.
=end
end