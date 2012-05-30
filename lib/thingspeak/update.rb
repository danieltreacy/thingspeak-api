module ThingSpeak

  class Update < Request
    attr_accessor :params, :lat, :long, :elevation, :status, :twitter, :tweet

    def initialize(params, location = {}, status = nil, twitter = nil, tweet = nil)
      raise ArgumentError.new("First argument to Update#new should be a Hash.") unless params.instance_of?(Hash)

      self.params = params
      self.lat = location[:lat]
      self.long = location[:long]
      self.elevation = location[:elevation]
      self.status = status
      self.twitter = twitter
      self.tweet = tweet

      self
    end
  end

end