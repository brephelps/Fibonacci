# Find value where index = 35

def recursive_fib(number)
  #if number == 0 or 1, return number
  #else keep looping through this method until you are down to 0 or 1
  #add results
  if number < 2
    number
  else
    recursive_fib(number - 1) + recursive_fib(number - 2)
  end
end


def iterative_fib(number)
  #run until index = 35
  value = 0
  fv = 0
  sv = 1

  #run until you hit desired index
  #store fv into temp variable
  #set fv equal to original sv
  #set sv equal to original fv plus itself
  number.times do
    value = fv
    fv = sv
    sv = value + sv
  end
  #print value of nth number
  return fv
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

recursive_fib(35)
iterative_fib(35)