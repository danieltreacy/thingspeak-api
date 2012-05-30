require 'spec_helper'

describe ThingSpeak::Client do

	before do
		@client = ThingSpeak::Client.new("somewritekey", "somereadkey")
		@rest_client = mock("RestClient")
		RestClient = @rest_client
	end

	it "should construct the params based on a given ThingSpeak::Update object" do
    expected_params = {foo:"bar", bar:"foo", key: "somewritekey"}

		@rest_client.stub(:post).and_return("response")
    @rest_client.should_receive(:post).with(ThingSpeak::THINGSPEAK_UPDATE_URL, expected_params)

		response = @client.update_channel({foo:"bar", bar:"foo"})

		response.should eq("response")
	end

	it "should throw an exception if update_channel argument is not of type ThingSpeak::Update" do
		lambda { @client.update_channel("illegal argument") }.should raise_error(ArgumentError)
	end

end