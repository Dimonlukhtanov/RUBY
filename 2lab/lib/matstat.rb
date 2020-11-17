class Matstat
  def initialize(data)
    @data = data.flatten.map(&:to_i)
  end

  def max
    @data.max
  end

  def min
    @data.min
  end

  def average
    @data.sum / @data.length
  end

  def dispersion
    aver = average
    sum = @data.inject(0.0) { |tmp_sum, n| tmp_sum + ((n - aver)**2) }
    sum / (@data.length - 1)
  end
end
