require('sleep_in')
require('rspec')

describe('SleepIn#self.sleep_in') do
  it 'tells the user that they need to sleep in if it is the weekend', :if => Time.now().saturday?() || Time.now().sunday?() do
    expect(SleepIn.sleep_in()).to(eq('Do nothing, Peter!'))
  end
  
  it 'tells the user to go to work if it is the weekday', :unless => Time.now().saturday?() || Time.now().sunday?() do
    expect(SleepIn.sleep_in()).to(eq('Go to work, Peter!'))
  end
end