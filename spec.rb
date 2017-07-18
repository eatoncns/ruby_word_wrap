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

    it "should split word when longer than line length" do
      expect(word_wrap("test", 2)).to eq "te\nst"
    end

    it "should perform mulitple splits when necessary" do
      expect(word_wrap("tested", 2)).to eq "te\nst\ned"
    end
  end

  context "given multiple word input" do
    it "should split on word boundary" do
      expect(word_wrap("test test", 5)).to eq "test\ntest"
    end

    it "avoid splitting words where possible" do
      expect(word_wrap("test test", 6)).to eq "test\ntest"
    end

    it "should split after word boundary" do
      expect(word_wrap("test test", 4)).to eq "test\ntest"
    end

    it "should handle multiple words per line" do
      expect(word_wrap("a lot of words for a single line", 10)).to eq "a lot of\nwords for\na single\nline"
    end
  end
end
