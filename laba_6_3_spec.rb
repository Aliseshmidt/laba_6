# frozen_string_literal: true

require_relative 'laba_6_3_main'
# rubocop:disable Metrics/BlockLength
RSpec.describe Neibr do
  describe '#met' do
    context 'when param is empty' do
      array = [%w[0 1], %w[0 0]]
      blockcos = proc { |x, y| y == Math.cos(x) }
      lambdacos = ->(x, y) { y == Math.cos(x) }
      res = %w[yes no]
      it 'should calculate' do
        expect(described_class.met(blockcos, array)).to eq(res)
      end
      it 'should calculate' do
        expect(described_class.met(lambdacos, array)).to eq(res)
      end
    end
    context 'when param is empty' do
      array = [%w[0 1], %w[0 0]]
      blocksin = proc { |x, y| y == Math.sin(x**2) }
      lambdasin = ->(x, y) { y == Math.sin(x**2) }
      res = %w[no yes]
      it 'should calculate' do
        expect(described_class.met(blocksin, array)).to eq(res)
      end
      it 'should calculate' do
        expect(described_class.met(lambdasin, array)).to eq(res)
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
