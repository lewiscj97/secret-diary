require 'secret_diary'

describe SecretDiary do
  describe "#initialize" do
    it "is initially locked" do
      expect(subject.status).to eq "locked"
    end
  end
end