# frozen_string_literal: true

require_relative 'laba_6_1_main'

RSpec.describe Iterator do
  describe '#iterate_sum' do
    context 'when param is empty' do
      it 'should calculate' do
        expect(described_class.iterate_sum(0.0001)).to eq([-0.3160590277777778, 6])
      end
    end
  end
end
