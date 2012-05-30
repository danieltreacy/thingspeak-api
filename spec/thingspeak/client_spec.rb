require 'spec_helper'

describe ThingSpeak::Client do

	before do
		@client = ThingSpeak::Client.new
		@rest_client = mock("RestClient")
		RestClient = @rest_client
	end

	it "should construct the params based on a given ThingSpeak::Update object" do
		expected_params = {foo:"bar", bar:"foo", key: ThingSpeak::WriteKey}

		@rest_client.stub(:post).and_return("response")
    @rest_client.should_receive(:post).with(ThingSpeak::THINGSPEAK_UPDATE_URL, expected_params)

		response = @client.update_channel(ThingSpeak::Update.new({foo:"bar", bar:"foo"}))

		response.should eq("response")
	end

	it "should throw an exception if update_channel argument is not of type ThingSpeak::Update" do
		@client.update_channel("illegal argument").should raise_error
	end

end