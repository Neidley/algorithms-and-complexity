# load './complexity-introduction/function.rb'

def function(n)
  array = (1..n).to_a
  iterations = 0
  array.each do |num|
    iterations += 1
  end
  return "#{n} - #{iterations}"
end

puts function(1)
puts function(2)
puts function(3)
puts function(4)
puts function(5)
puts function(6)
puts function(7)
puts function(8)
puts function(9)
puts function(10)
