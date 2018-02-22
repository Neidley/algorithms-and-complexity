def fib(n)
  if (n == 0)
    # #1
    return 0
  elsif (n == 1)
    # #2
    return 1
  else
    # #3
    return fib(n-1) + fib(n-2)
  end
end


=begin

Given an unsorted collection of a million items,
which algorithm would you choose between linear search and binary search?
Would you use an iterative or recursive solution? Explain your reasoning.
  

Given a sorted collection of a million items,
which algorithm would you choose between linear search and binary search?
Would you use an iterative or recursive solution? Explain your reasoning.

=end
