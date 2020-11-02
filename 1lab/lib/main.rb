require './builder'
Dir['./calcs/*.rb'].sort.each { |file| require file }

ALLOWED_SCALES = %w[K C F].freeze

def input_right?(input_scale, output_scale)
  if ALLOWED_SCALES.include?(input_scale)
    if ALLOWED_SCALES.include?(output_scale)
      return true if output_scale != input_scale
    end
  end
  false
end

puts('Введите кол-во градусов:')
degrees = gets.chomp
puts('Введите начальную шкалу(C, K, F):')
input_scale = gets.chomp.upcase
puts('Введите конечную шкалу(C, K, F):')
output_scale = gets.chomp.upcase

if input_right?(input_scale, output_scale)
  my_calc = Builder.build(input_scale, output_scale)
  puts my_calc.calc(degrees.to_i)
end
