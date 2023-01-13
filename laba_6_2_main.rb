# frozen_string_literal: true

# class for interating sum with precision
class Iterator
  def self.calc_sum(kpar)
    ((-1.00)**kpar) / (2 * (1..kpar).inject { |a, b| a * b })
  end

  # rubocop:disable Metrics/AbcSize
  def self.iterate_sum(epsilon)
    arr = [0]
    enum = (1..Float::INFINITY).lazy.map { |k| arr[k] = calc_sum(k) }
                               .take_while { (calc_sum(arr.size.to_f - 1).abs - calc_sum(arr.size.to_f).abs) > epsilon }
    enum.force
    [arr.inject(:+), arr.size]
  end
  # rubocop:enable Metrics/AbcSize
end
