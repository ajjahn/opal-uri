module URI
  class Generic
    attr_reader :scheme, :user, :password, :host, :port, :path, :search, :fragment

    #
    # An Array of the available components for URI::Generic
    #
    COMPONENT = [
      :scheme,
      :userinfo, :host, :port, :registry,
      :path, :opaque,
      :query,
      :fragment
    ].freeze

    PORTS = {
      http: 80,
      https: 443,
    }

    def initialize(url)
      @url = url
      # scheme://conn_data/path?query#hash
      match = url.match(%r[(\w+)://([^/]+)([^\?]+)(\?[^\#]+)?(\#.*)?])

      _, @scheme, connection_data, @path, @search, @fragment = match.to_a

      connection_data = connection_data.split(/@/)
      if connection_data.size > 1
        @user, @password = connection_data.first.split(/:/)
      end
      @host, @port = connection_data.last.split(/:/)

      @port = @port.to_i
    end

    def userinfo
      [user, password].join(":")
    end

    def query
      return unless search
      search[1..-1].split('&').map { |chunk| chunk.split('=') }.each_with_object({}) { |(key, value), hash|
        key = key.to_sym
        hash[key] = if hash[key]
                      Array(hash[key]).push(value)
                    else
                      value
                    end
      }
    end

    def ==(other)
      self.class == other.class &&
        component_ary == other.component_ary
    end

    protected

    def component_ary
      component.collect do |x|
        self.send(x)
      end
    end

    private

    def component
      self.class::COMPONENT
    end

    def registry
    end

    def opaque
    end
  end
end
