
require 'httparty'
require 'json'

access_token = "live_ZvqUYfOIW5L3ukAyR60QNwQdWfFaHlr7cmbUvOmy"

response = HTTParty.get("play.google.com/download/apk",
                        :headers => {
                          "Authorization" => access_token
                        })

puts response.code
puts response.body


