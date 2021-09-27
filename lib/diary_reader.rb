class DiaryReader
  def read(entries)
    entries.each {|entry| puts entry.stringify}
  end
end