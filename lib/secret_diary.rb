class SecretDiary
  def initialize
    @locked = true
    @entries = []
  end

  def status
    @locked ? "locked" : "unlocked"
  end

  def unlock
    @locked = false
  end

  def add_entry(date, entry)
    raise "Diary is locked" if @locked
    @entries << [date, entry]
    "Entry added"
  end

  def get_entries
    raise "Diary is locked" if @locked
    @entries.each do |entry|
      puts "Date: #{entry[0]}, Entry: #{entry[1]}"
    end
  end
end