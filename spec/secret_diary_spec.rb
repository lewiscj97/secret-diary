require 'secret_diary'

describe SecretDiary do
  describe "#initialize" do
    it "is initially locked" do
      expect(subject.status).to eq "locked"
    end
  end

  describe "#add_entry" do
    context "diary is locked" do
      it "does not let the user add an entry" do
        expect { subject.add_entry("date", "entry") }.to raise_error "Diary is locked"
      end
    end

    context "diary is unlocked" do
      it "lets the user add an entry" do
        subject.unlock
        expect(subject.add_entry("27/09/21", "Today is a Monday")).to eq "Entry added"
      end
    end
  end

  describe "#get_entries" do
    context "diary is locked" do
      it "does not let the user get entries" do
        expect { subject.get_entries }.to raise_error "Diary is locked"
      end
    end

    context "diary is unlocked" do
      it "prints the entries to the console" do
        subject.unlock
        subject.add_entry("27/09/21", "Today is a Monday")
        expect { subject.get_entries }.to output("Date: 27/09/21, Entry: Today is a Monday\n").to_stdout
      end
    end
  end

  describe "#unlock" do
    it "unlocks the diary" do
      subject.unlock
      expect(subject.status).to eq "unlocked"
    end
  end

  describe "#lock" do
    it "doesn't let the user lock the diary again" do
      expect { subject.lock }.to raise_error "Diary is already locked"
    end
  end
end