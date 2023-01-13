# frozen_string_literal: true

# :reek:TooManyStatements

# class for interating sum with precision
class Iterator
  def self.calc_sum(kpar)
    ((-1.00)**kpar) / (2 * (1..kpar).inject { |a, b| a * b })
  end

  def self.iterate_sum(epsilon)
    sum = prev_part_of_sum = calc_sum(kpar = 1)
    iterations = 0
    sum += part_of_sum = calc_sum(kpar += 1)
    until (prev_part_of_sum.abs - part_of_sum.abs) < epsilon
      iterations += 1
      prev_part_of_sum = part_of_sum
      sum += part_of_sum = calc_sum(kpar += 1)
    end
    [sum, iterations]
  end
end
