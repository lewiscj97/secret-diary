class DiaryEntry
  def initialize(date, entry)
    @date = date
    @entry = entry
  end

  def stringify
    "Date: #{@date}, Entry: #{@entry}"
  end
end