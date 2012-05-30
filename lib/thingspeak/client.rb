require 'rest_client'

module ThingSpeak
  class Client
    def initialize(write_key, read_key)
      @write_key = write_key
      @read_key = read_key

      self
    end

    def update_channel(hash)
      update = ThingSpeak::Update.new(hash)

      begin
        RestClient.post ThingSpeak::THINGSPEAK_UPDATE_URL, update.build_params.with_key(@write_key)
      rescue
        puts "RestClient error"
      end
    end
  end
end