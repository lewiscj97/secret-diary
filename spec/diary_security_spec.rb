require 'diary_security'

describe DiarySecurity do
  describe "#initialize" do
    it "is initially locked" do
      expect(subject.status).to eq "locked"
    end
  end

  describe "#unlock" do
    it "unlocks the diary" do
      subject.unlock
      expect(subject.status).to eq "unlocked"
    end
  end

  describe "#lock" do
    it "locks the diary" do
      subject.unlock
      subject.lock
      expect(subject.status).to eq "locked"
    end
  end
end