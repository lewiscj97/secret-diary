class DiarySecurity

  def initialize
    @locked = true
  end
  
  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def status
    @locked ? "locked" : "unlocked"
  end
end