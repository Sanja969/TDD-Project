require 'yaml'

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
      expect(@solver).factorial(6).to eql 720
    end
    it 'returns 1 for factorial 1 or 0' do
      expect(@solver).factorial(0).to eql 1
      expect(@solver).factorial(1).to eql 1
    end
    it 'throw RangeError exceptioon for factorial of negative value' do
      expect(@solver).factorial(-6).to raise_exception RangeError
    end
  end
end

