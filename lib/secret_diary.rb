require_relative 'diary_entry'

class SecretDiary
  def initialize(security)
    @security = security
    @entries = []
  end

  def unlock
    @security.unlock
  end

  def lock
    raise "Diary is already locked" if @locked
    @security.lock
  end

  def add_entry(date, entry)
    raise "Diary is locked" if @security.status == "locked"
    @entries << DiaryEntry.new(date, entry)
    "Entry added"
  end

  def get_entries
    raise "Diary is locked" if @security.status == "locked"
    @entries.each do |entry|
      puts entry.stringify
    end
  end
end