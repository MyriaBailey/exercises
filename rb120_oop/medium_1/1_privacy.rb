class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  # Somewhat confusing further exploration description, but done?
  def get_switch
    switch
  end

  private
  
  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

thing = Machine.new
thing.start
p thing
p thing.get_switch