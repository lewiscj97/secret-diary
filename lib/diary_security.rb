class DiarySecurity
  def initialize
    @locked = true
  end

  def status
    @locked ? "locked" : "unlocked"
  end
  
  def lock
    raise "Diary is already locked" if @locked
    @locked = true
  end

  def unlock
    @locked = false
  end
end