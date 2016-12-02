require "uri"

RSpec.describe URI do
  describe "kernal function" do
    let(:url) { "http://www.ruby-lang.org/" }
    it "delegates to parse" do
      expected = URI.parse(url)
      expect(URI(url)).to eq(expected)
      expect(Kernel::URI(url)).to eq(expected)
    end

    it "raises an argument error for bad input" do
      expect{URI(1)}.to raise_error(ArgumentError)
    end
  end
end
