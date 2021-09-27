class SecretDiary
  def initialize
    @locked = true
  end

  def status
    @locked ? "locked" : "unlocked"
  end

  def unlock
    @locked = false
  end

  def add_entry
    raise "Diary is locked" if @locked
  end

  def get_entries
    raise "Diary is locked" if @locked
  end
end