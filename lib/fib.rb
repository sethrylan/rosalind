# http://rosalind.info/problems/fib/

def fib(n, k)
  case n
  when 1..2
    return 1
  else
      return fib(n-1, k) + k * fib(n-2, k)
  end
end

puts fib(28, 3)