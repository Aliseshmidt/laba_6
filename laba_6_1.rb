# frozen_string_literal: true

require_relative 'laba_6_1_main'
# :reek:TooManyStatements

puts 'Введите ξ:'
epsilon = gets.to_f
puts 'Результат:'
result = Iterator.iterate_sum(epsilon)
puts "Cумма приблизительно равна:#{result[0]}\n"
puts "Количество итераций:#{result[1]}\n"
