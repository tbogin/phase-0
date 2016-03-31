# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "elena"
assert {name == "elena"}
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#When the program in run, the assert statement is raised for line 14, where name == "billybob"
#The assert method will warn you that the test failed unless code is yielded to the assert block
#The first assert block holds the correct name, "bettysue". When the second assert block is commented out, no assert alert is raised, because the test passes.
#The assert method is useful for testing whether your code is true to your intentions. 
  #I reassigned the name variable to "elena", and noticed that the test passed when I asserted "elena" was the name within the block, and test then didn't pass for "bettysue"


# 3. Copy your selected challenge here
#letter grade from week 4

require_relative "my_solution"

describe 'get_grade' do
  it 'is defined as a method' do
    expect(defined?(get_grade)).to eq 'method'
  end
  it 'returns "A" when the average is >= 90' do
    expect(get_grade(90)).to eq "A"
  end
  it 'returns "B" when the average is >= 80' do
    expect(get_grade(88)).to eq "B"
  end
  it 'returns "C" when the average is >= 70' do
    expect(get_grade(72)).to eq "C"
  end
  it 'returns "D" when the average is >= 60' do
    expect(get_grade(66)).to eq "D"
  end
  it 'returns "F" when the average is < 60' do
    expect(get_grade(50)).to eq "F"
  end
end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  if yield puts "Test passed"
  else
    raise "Test failed"
  end
end
puts assert{get_grade(90) == "A"} 


# 5. Reflection
#This was my second challenge this week. I'm trying to finish most before week 9.
#Testing was totally new to me before this challenge. I had only glanced at the rspec, blindly trusting in their magic.
#I have a LOT to learn about testing, but after this challenge, I think I have a good basic idea of how to write tests. 
#I'm happy that I'll be familiar with testing when the concept is introduced during phase 1.