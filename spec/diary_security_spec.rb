require 'diary_security'

describe DiarySecurity do
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

    it "locks the diary and forbids other actions" do
      # unlock to simulate prior usage
      subject.unlock
      subject.lock
      
      expect { subject.add_entry("date", "entry") }.to raise_error "Diary is locked"
      expect { subject.get_entries }.to raise_error "Diary is locked"
    end
  end
end