require_relative 'kata'

RSpec.describe "word_wrap" do

  context "given empty input" do
    it "returns empty string" do
      expect(word_wrap("", 1)).to eq ""
    end
  end

  context "given single word input" do
    it "returns word when smaller than line length" do
      expect(word_wrap("test", 5)).to eq "test"
    end

    it "splits word when longer than line length" do
      expect(word_wrap("test", 2)).to eq "te\nst"
    end

    it "performs multiple splits when necessary" do
      expect(word_wrap("tested", 2)).to eq "te\nst\ned"
    end
  end

  context "given multiple word input" do
    it "splits on word boundary" do
      expect(word_wrap("test test", 5)).to eq "test\ntest"
    end

    it "avoids splitting words where possible" do
      expect(word_wrap("test test", 6)).to eq "test\ntest"
    end

    it "splits after word boundary" do
      expect(word_wrap("test test", 4)).to eq "test\ntest"
    end

    it "handles multiple words per line" do
      expect(word_wrap("a lot of words for a single line", 10)).to eq "a lot of\nwords for\na single\nline"
    end
  end
end
