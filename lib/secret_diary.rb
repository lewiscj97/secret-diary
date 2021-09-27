require_relative 'diary_entry'
require_relative 'diary_security'
require_relative 'diary_reader'

class SecretDiary
  def initialize
    @security = DiarySecurity.new
    @reader = DiaryReader.new
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
    raise "Diary is locked" if locked?
    @entries << DiaryEntry.new(date, entry)
    "Entry added"
  end

  def get_entries
    raise "Diary is locked" if locked?
    @reader.read(@entries)
    "Entries"
  end

  private

  def locked?
    @security.status == "locked"
  end
end