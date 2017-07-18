require_relative 'kata'

describe "word_wrap" do

  context "given empty input" do
    it "should return empty string" do
      expect(word_wrap("", 1)).to eq ""
    end
  end

  context "given single word input" do
    it "should return word when smaller than line length" do
      expect(word_wrap("test", 5)).to eq "test"
    end
  end
end
