require "opal/uri/version"
require "opal"

module Opal
  class URI
  end
end

Opal.append_path(File.expand_path(File.join("..", "..", "..", "opal"), __FILE__).untaint)

