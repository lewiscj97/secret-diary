require 'diary_reader'

describe DiaryReader do
  describe "#read" do
    let(:entry) {double :entry, stringify: "Date: 27/09/21, Entry: Today is a Monday\n"}

    it "prints an array" do
      entries = [entry]  
      expect { subject.read(entries) }.to output("Date: 27/09/21, Entry: Today is a Monday\n").to_stdout  
    end
    
  end
end