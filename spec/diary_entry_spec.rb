require 'diary_entry'

describe DiaryEntry do
  it 'creates a new entry' do
    entry = DiaryEntry.new("date", "entry")
    expect(entry.stringify).to eq "Date: date, Entry: entry"
  end
end