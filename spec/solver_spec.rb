require 'rspec'
require_relative '../solver'


describe Solver do
  let(:solver) { Solver.new }
  # context 'confirms the methods:' do
  #   solver = Solver.new

  describe '#factorial' do
    it 'calculates the factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3628800)
    end

    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative integers' do
      expect { solver.factorial(-1) }.to raise_error("Negative integer not allowed")
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(solver.reverse("hello")).to eq("olleh")
      expect(solver.reverse("abcd")).to eq("dcba")
    end

    it 'returns an empty string for an empty string' do
      expect(solver.reverse("")).to eq("")
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(solver.fizzbuzz(3)).to eq("fizz")
    end

    it 'returns "buzz" for multiples of 5' do
      expect(solver.fizzbuzz(5)).to eq("buzz")
    end

    it 'returns "fizzbuzz" for multiples of 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq("7")
    end
  end
end
