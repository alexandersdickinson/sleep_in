class SleepIn
  def self.sleep_in
    current_time = Time.now()
    if current_time.saturday?() || current_time.sunday?()
      return 'Do nothing, Peter!'
    else
      return 'Go to work, Peter!'
    end
  end
end