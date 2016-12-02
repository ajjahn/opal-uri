require "uri/generic"

RSpec.describe URI::Generic do
  it "is equal to other instance with the same uri" do
    uri = "http://example.com/"
    expect(URI.parse(uri)).to eq(URI.parse(uri))
  end
end
