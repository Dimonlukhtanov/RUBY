require 'csv'
require './matstat'

data = CSV.read('data.csv')

stat = Matstat.new(data)
puts "max = #{stat.max}"
puts "min = #{stat.min}"
puts "average = #{stat.average}"
puts "dispersion = #{stat.dispersion}"
