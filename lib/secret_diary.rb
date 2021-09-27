class SecretDiary
  def initialize
    @locked = true
  end

  def status
    @locked ? "locked" : "unlocked"
  end
end