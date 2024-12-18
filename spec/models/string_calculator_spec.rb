require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for number as a blank string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end
  end
end
