class Solver
  def factorial(n)
    if n < 0
      raise "Negative integer not allowed"
    end

    result = 1
    (1..n).each do |i|
      result *= i
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    return "fizzbuzz" if n % 3 == 0 && n % 5 == 0
    return "fizz" if n % 3 == 0
    return "buzz" if n % 5 == 0
    n.to_s
  end
end
