# frozen_string_literal: true

require_relative 'laba_6_2_main'

RSpec.describe Iterator do
  describe '#iterate_sum' do
    context 'when param is empty' do
      it 'should calculate' do
        expect(described_class.iterate_sum(0.0001)).to eq([-0.31607142857142856, 8])
      end
    end
  end
end
