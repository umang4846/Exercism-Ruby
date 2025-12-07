class AssemblyLine 
  ITEMS_PER_HOUR_AT_SPEED_1 = 221 
  MINUTES_PER_HOUR = 60
def initialize(speed)
  @speed = speed 
  @error_rate = calculate_error_rate 
end

def production_rate_per_hour 
  @speed * ITEMS_PER_HOUR_AT_SPEED_1 * @error_rate 
end

def working_items_per_minute 
  (production_rate_per_hour / MINUTES_PER_HOUR).to_i 
end

private

def calculate_error_rate 
  case @speed when 1..4 then 1.0 
  when 5..8 then 0.9 
  when 9 then 0.8 
  when 10 then 0.77 
  else 0.0 
  end 
 end 
end