require_relative 'kata'

describe "word_wrap" do

  context "given empty input" do
    it "should return empty string" do
      expect(word_wrap("", 1)).to eq ""
    end
  end
end
