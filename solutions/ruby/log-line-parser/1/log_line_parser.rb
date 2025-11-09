class LogLineParser
  def initialize(line)
    @line = line
    @level = @line.split(":")[0].strip
    @level = @level.slice(1,@level.size-2).downcase
    @message = @line.split(":")[1].strip
  end

  def message
    @message
  end

  def log_level
    @level
  end

  def reformat
    @message +" (#{@level})"
  end
end
