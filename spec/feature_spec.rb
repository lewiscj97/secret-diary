require 'secret_diary'

describe SecretDiary do
  context "happy path" do
    it "adds entries and prints them" do
      subject.unlock
      subject.add_entry("28/09/21", "Today I learned about OOP")
      subject.add_entry("29/09/21", "Today I learned about encapsulation")
      expect { subject.get_entries }.to output("Date: 28/09/21, Entry: Today I learned about OOP\nDate: 29/09/21, Entry: Today I learned about encapsulation\n").to_stdout
    end
  end

  context "sad path" do
    it "doesn't let the user add entry when locked" do
      expect { subject.add_entry("date", "entry") }.to raise_error "Diary is locked"
      expect { subject.get_entries }.to raise_error "Diary is locked"
    end
  end
end
