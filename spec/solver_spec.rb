require 'yaml'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe '#new' do
    it 'returns a new book object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'returns 720 for factorial of 6' do
      expect(@solver).factorial(6).to eql 720
    end
  end
end
