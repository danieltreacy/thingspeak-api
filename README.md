ThingSpeak API
==============

This is a Ruby wrapper for interacting with the ThingSpeak REST API from Ruby programs.

To use, simply include it in your Gemfile:

    # gem 'thingspeak-api'

or install from the command line:

    # gem install 'thingspeak-api'

Create a client with your read key and write key and send a message to your channel:

```ruby
require 'thingspeak-api'

client = ThingSpeak::Client.new("YOUR_READ_KEY", "YOUR_WRITE_KEY")

client.update_channel({param1: "foo", param2: "bar"})

```


License
-------

MIT License

Copyright (c) 2012 Daniel Treacy

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.