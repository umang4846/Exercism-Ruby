
class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    debug "The input is #{first_operand}"
    debug "The input is #{second_operand}"
    debug "The input is #{operation}"
    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      raise ArgumentError.new ("Invalid argument")
    end
    
    if !ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation.new('Unsupported operation')
    end

    begin
     ans = case operation
           when '+'
           first_operand + second_operand
           when '/'
           first_operand / second_operand
           when '*'
           first_operand * second_operand
     end

      "#{first_operand} #{operation} #{second_operand} = #{ans}"

    rescue ZeroDivisionError
      return 'Division by zero is not allowed.'
    end
  end
end
