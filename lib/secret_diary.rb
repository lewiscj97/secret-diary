require_relative 'diary_entry'

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

  def lock
    raise "Diary is already locked" if @locked
    @locked = true
  end

  def add_entry(date, entry)
    raise "Diary is locked" if @locked
    @entries << DiaryEntry.new(date, entry)
    "Entry added"
  end

  def get_entries
    raise "Diary is locked" if @locked
    @entries.each do |entry|
      puts entry.stringify
    end
  end
end