require "uri/generic"

module URI
  def self.parse(url)
    Generic.new(url)
  end
end
