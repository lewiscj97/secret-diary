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
        expect { subject.add_entry }.to raise_error "Diary is locked"
      end
    end
  end
end