require './solver'

RSpec.describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe 'Factorial' do
    it 'Should pass the tests' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(7)).to eq(5040)
      expect { @solver.factorial(-1) }.to raise_error(Exception, 'Cant be factorial by negative numbers!')
    end
  end

  describe 'Reverse' do
    it 'Should reverse the word' do
      expect(@solver.reverse('Hello!')).to eq('!olleH')
      expect(@solver.reverse('Hello123')).to eq('321olleH')
    end
  end

  describe 'FizzBuzz' do
    it 'Should return Fizz' do
      expect(@solver.fizzbuzz(9)).to eq('Fizz')
      expect(@solver.fizzbuzz(27)).to eq('Fizz')
    end

    it 'Should return Buzz' do
      expect(@solver.fizzbuzz(20)).to eq('Buzz')
      expect(@solver.fizzbuzz(35)).to eq('Buzz')
    end

    it 'Should return FizzBuzz' do
      expect(@solver.fizzbuzz(15)).to eq('FizzBuzz')
      expect(@solver.fizzbuzz(3000)).to eq('FizzBuzz')
    end
  end
end
