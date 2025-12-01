class AssemblyLine
  def initialize(speed)
    @speed = speed
    @error_rate = error_rate(@speed)
  end

  def production_rate_per_hour
    @speed * 221 * @error_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  def error_rate(speed)
    error_rate_num = 1.0
    if speed >= 1 && speed <= 4 
      error_rate_num = 1.0
    elsif speed >= 5 && speed <= 8
      error_rate_num = 0.9
    elsif speed == 9
      error_rate_num = 0.8
    elsif speed == 10
      error_rate_num = 0.77
    else
      error_rate_num = 0.0
    end
  end
end
