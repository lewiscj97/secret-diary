class SecretDiary
  def initialize
    @locked = true
  end

  def status
    @locked ? "locked" : "unlocked"
  end

  def add_entry
    raise "Diary is locked" if @locked
  end
end