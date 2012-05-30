module ThingSpeak
  class Request
    def build_params
      params = {}

      self.params.each do |k, v|
        params[k] = v
      end

      params[:lat] = self.lat if self.lat
      params[:long] = self.long if self.long
      params[:elevation] = self.elevation if self.elevation
      params[:status] = self.status if self.status
      params[:twitter] = self.twitter if self.twitter
      params[:tweet] = self.tweet if self.tweet

      params.class.send(:define_method, :with_key) do |key|
        self[:key] = key
        self
      end

      params
    end
  end
end
