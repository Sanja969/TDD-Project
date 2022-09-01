class Solver
  def factorial(number)
    raise RangeError, "You can't put negative value as argument when calling factorial method" if number.negative?
    return 1 if number.zero? || number == 1

    number * factorial(number - 1)
  end
  
end
