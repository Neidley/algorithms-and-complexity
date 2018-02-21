=begin
DEF FIB(n)
  SET fib_0 to 0
  SET fib_1 to 1
  FOR each value from 0 to one less than n
    SET temp to fib_0
    ASSIGN fib_1 to fib_0
    COMPUTE temp + fib_1, ASSIGN to fib_1
  END FOR
  RETURN fib_1
END DEF
=end

  def fib(n)
    fib_0 = 0
    fib_1 = 1
    array = (0...n).to_a
    array.each do |integer|
      temp = fib_0
      fib_0 = fib_1
      fib_1 = temp + fib_1
    end
    return fib_1
  end

#run irb
#require './intro-to-algorithms-solutions/fibonacci_iterative.rb'
 puts fib(0) #=> 1
 puts fib(1) #=> 1
 puts fib(2) #=> 2
 puts fib(3) #=> 3
 puts fib(4) #=> 5
 puts fib(5) #=> 8
 puts fib(6) #=> 13
 puts fib(7) #=> 21
 puts fib(8) #=> 34
 puts fib(9) #=> 55
