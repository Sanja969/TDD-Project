class Solver
  def factorial(number)
    raise RangeError, "You can't put negative value as argument when calling factorial method" if number.negative?
    return 1 if number.zero? || number == 1

    number * factorial(number - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if number.%(3).zero? && number.%(5).zero? then 'fizzbuzz'
    elsif number.%(3).zero? then 'fizz'
    elsif number.%(5).zero? then 'buzz'
    else
      number.to_s
    end
  end
end
