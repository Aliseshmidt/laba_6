# frozen_string_literal: true

require_relative 'laba_6_3_main'

# :reek:TooManyStatements
puts 'Input x and y points: '
array = Array.new(2)
array.each_index { |i| array[i] = gets.chomp.split(' ') }

puts "Check belonging to y = cos(x) \n"

blockcos = proc { |x, y| y == Math.cos(x) }
lambdacos = ->(x, y) { y == Math.cos(x) }
puts "\nCalculate with proc block:
Point #{array[0][0]} #{array[0][1]} belongs to function? \n #{Neibr.met(blockcos, array)[0]}
Point #{array[1][0]} #{array[1][1]} belongs to function? \n #{Neibr.met(blockcos, array)[1]}"
puts "\nCalculate with lambda:
Point #{array[0][0]} #{array[0][1]} belongs to function? \n #{Neibr.met(lambdacos, array)[0]}
Point #{array[1][0]} #{array[1][1]} belongs to function? \n #{Neibr.met(lambdacos, array)[1]}"

puts "Check belonging to y = sin(x^2) \n"

blocksin = proc { |x, y| y == Math.sin(x**2) }
lambdasin = ->(x, y) { y == Math.sin(x**2) }
puts "\nCalculate with proc block:
Point #{array[0][0]} #{array[0][1]} belongs to function? \n #{Neibr.met(blocksin, array)[0]}
Point #{array[1][0]} #{array[1][1]} belongs to function? \n #{Neibr.met(blocksin, array)[1]}"
puts "\nCalculate with lambda:
Point #{array[0][0]} #{array[0][1]} belongs to function? \n #{Neibr.met(lambdasin, array)[0]}
Point #{array[1][0]} #{array[1][1]} belongs to function? \n #{Neibr.met(lambdasin, array)[1]}"
