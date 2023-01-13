# frozen_string_literal: true

# :reek:TooManyStatements

# class for neibr
class Neibr
  def self.met(block, array)
    array.map { |point| block.call(point[0].to_f, point[1].to_f) == true ? 'yes' : 'no' }
  end
end
