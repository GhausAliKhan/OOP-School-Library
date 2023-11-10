class Solver
  def factorial(num)
    raise Exception, 'Cant be factorial by negative numbers!' if num.negative?
    return 1 if num <= 1

    num * factorial(num - 1)
  end
end
