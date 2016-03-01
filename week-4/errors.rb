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
end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb

# 2. What is the line number where the error occurs?
# 189

# 3. What is the type of error message?
# syntax error

# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input; expecting keyword_end

# 5. Where is the error in the code?
# missing 'end' for while loop

# 6. Why did the interpreter give you this error?
# Both while loop and method need end keywords, but only method had one.

# --- error -------------------------------------------------------

south_park = "Still good"

# 1. What is the line number where the error occurs?
#44
# 2. What is the type of error message?
# '<main>'
# 3. What additional information does the interpreter provide about this type of error?
#Undefined local variable or method
# 4. Where is the error in the code?
#no variable assignment for South Park
# 5. Why did the interpreter give you this error?
#south_park is not assigned a value

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#59
# 2. What is the type of error message?
#'<main>'
# 3. What additional information does the interpreter provide about this type of error?
#undefined method for main:Object
# 4. Where is the error in the code?
#No 'def' keyword before cartman()
# 5. Why did the interpreter give you this error?
#cartman() not written as a method name

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#79
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments given (1 when 0 expected)
# 4. Where is the error in the code?
#("I hate Kyle") argument doesn't match parameters.
# 5. Why did the interpreter give you this error?
#Method was called with an argument it doesn't have. Can only return puts phrase.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Kyle!")

# 1. What is the line number where the error occurs?
#94
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments (0 given, 1 expected)
# 4. Where is the error in the code?
#No argument when method was called
# 5. Why did the interpreter give you this error?
#Method was called without an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kyle")

# 1. What is the line number where the error occurs?
#119
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#1 argument given, 2 expected
# 4. Where is the error in the code?
#String in method call
# 5. Why did the interpreter give you this error?
#Method was called with fewer arguments than it had parameters.

# --- error -------------------------------------------------------

5.times {puts "Respect my authoritay!"}

# 1. What is the line number where the error occurs?
#134
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be cocerced into fixnum
# 4. Where is the error in the code?
#Multiplication of string and integer. Should use 5.times {puts string}
# 5. Why did the interpreter give you this error?
#Can't multiply an integer and a string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0


# 1. What is the line number where the error occurs?
#149
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#Number is divided by 0
# 4. Where is the error in the code?
#20/0
# 5. Why did the interpreter give you this error?
#20/0 not a real number.

# --- error -------------------------------------------------------

"cartmans_essay.md"

# 1. What is the line number where the error occurs?
#165
# 2. What is the type of error message?
#"<main>"
# 3. What additional information does the interpreter provide about this type of error?
#"require_relative" the wrong command to load a file.
# 4. Where is the error in the code?
# require_relative
# 5. Why did the interpreter give you this error?
#'require' is a key word in Ruby, not the name of a variable (which here lacks =)


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read? The first error - didn't notice lack of 'end' for while loop

How did you figure what the issue with the error was? I suddenly remembered that the while loop needed to end as well as the method.

Were you able to determine why each error message happened based on the code? Yes.

When you encounter errors in the future, what process will you follow to help you debug?
I will carefully read the error message, locate the line with the error, and keep ruby's recommendations in mind.
=end
