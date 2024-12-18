require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for number as a blank string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'It should return self number for a single number' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
    end

    it 'It should return the sum of two comma separated numbers' do
      calculator = StringCalculator.new
      expect(calculator.add('1,5')).to eq(6)
    end

    it 'It should supports newlines and comma separator' do
      calculator = StringCalculator.new
      expect(calculator.add('1\n2,3')).to eq(6)
    end

    it 'It should supports custom delimiter' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
