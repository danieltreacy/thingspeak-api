require 'rest_client'

module ThingSpeak

	class Client
		def update_channel(update)
      begin
        RestClient.post ThingSpeak::THINGSPEAK_UPDATE_URL, build_params(update)
      rescue
        puts "Bad request"
      end
    end

		private

		def build_params(update)
			if !update.instance_of?(ThingSpeak::Update)
				raise ArgumentError.new("Argument to 'update_channel' must be of type ThingSpeak::Update.")
			end

			params = {}

			update.params.each do |k,v|
				params[k] = v
			end

			params[:key] = ThingSpeak::WriteKey
			params[:lat] = update.lat if update.lat
			params[:long] = update.long if update.long
			params[:elevation] = update.elevation if update.elevation
			params[:status] = update.status if update.status
			params[:twitter] = update.twitter if update.twitter
			params[:tweet] = update.tweet if update.tweet

			params
		end
	end

end