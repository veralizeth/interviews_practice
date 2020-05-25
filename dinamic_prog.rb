def fibonacci(n)
  if n == 0 || n == 1
    return n
  end

  return fibonacci(n-1) + fibonacci(n-2)
end



# fibonacci(n - 1) + fibonacci(n - 2)
# fib(2) + fib(1)  = 1 + 1 = 2
# fib(1) = 1

# fib(3) + fib(2) = 1 + 0 = 1
# fib(2) + fib(1) = 1 + 0 = 1
# fib(1) + fib(0) = 1 + 0 = 1

# def fib(n)
#   array_n = Array.new(n)

#   array_n[0] = 0
#   array_n[1] = 1

#   (2..n).each do |index|
#     array_n[index] = array_n[index - 1] + array_n[index - 2]
#   end

#   return array_n[n]
# end

def fib(n)
  if n == 0 || n == 1
    return n
  end

  number1 = 0
  number2 = 1
  number3 = 0

  (2..n).each do |index|
    number3 = number1 + number2
    number1 = number2
    number2 = number3
  end

  return number3
end

# puts fib(40)
# puts fibonacci(40)

# class Fibonacci

#   def self.fib(n)
#     @array_n = Array.new(n)
#     return fib_helper(n)
#   end

#   private

#   def self.fib_helper(n)
#     if n == 0 || n == 1
#       return n
#     end

#     if @array_n[n].nil?
#       @array_n[n] = fib_helper(n - 2) + fib_helper(n - 1)
#     end

#     return @array_n[n]
#   end
# end

# puts Fibonacci.fib(20)

# puts fibonacci(40)
# puts fib(20)

class Fibonacci

  def self.fib(n)
    @number1 = 0
    @number2 = 1
    @number3 = 0
    return fib_helper(n)
  end

  private

  def self.fib_helper(n)
    if n == 0 || n == 1
      return n
    end

    if n > 2
      fib_helper(n-1)
    end

    @number3 = @number1 + @number2
    @number1 = @number2
    @number2 = @number3

    return @number3
  end
end

puts Fibonacci.fib(50)

puts fib(50)
