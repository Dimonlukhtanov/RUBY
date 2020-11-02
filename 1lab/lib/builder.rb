Dir['./calcs/*.rb'].sort.each { |file| require file }

class Builder
  def self.build(input_scale, output_scale)
    str = "#{input_scale}#{output_scale}Calc"
    Object.const_get(str).new
  end
end
