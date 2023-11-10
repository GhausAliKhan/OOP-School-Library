class Solver
  def factorial(num)
    raise Exception, 'Cant be factorial by negative numbers!' if num.negative?
    return 1 if num <= 1

    num * factorial(num - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num
    end
  end
end
