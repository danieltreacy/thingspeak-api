require 'spec_helper'

describe ThingSpeak::Update do

	it "should be initializable with only params" do
		update = ThingSpeak::Update.new({foo: "bar", bar: "foo"})

		update.should be_instance_of ThingSpeak::Update
		update.lat.should be_nil
		update.long.should be_nil
		update.elevation.should be_nil
		update.status.should be_nil
		update.twitter.should be_nil
		update.tweet.should be_nil
	end

end