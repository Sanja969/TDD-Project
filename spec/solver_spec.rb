require 'yaml'
require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe '#new' do
    it 'returns a new solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'returns 720 for factorial of 6' do
      expect(@solver.factorial(6)).to eql 720
    end
    it 'returns 1 for factorial 1 or 0' do
      expect(@solver.factorial(0)).to eql 1
      expect(@solver.factorial(1)).to eql 1
    end
    it 'throw RangeError exceptioon for factorial of negative value' do
      expect { lambda @solver.factorial(-6) }.to raise_exception RangeError
    end
  end

  describe '#reverse' do
    it 'for given argument - word return - drow' do
      expect(@solver.reverse('word')).to eql 'drow'
    end
  end

  describe '#fizzbuzz' do
    it 'when argument is divisible by 3' do
      expect(@solver.fizzbuzz(6)).to eql 'fizz'
    end
    it 'when argument is divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end
    it 'when argument is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end
    it 'when argument is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eql '7'
    end
  end
end
