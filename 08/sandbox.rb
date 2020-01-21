
require 'httparty'
require 'json'

access_token = "1234"

response = HTTParty.get("play.google.com/download/apk",
                        :headers => {
                          "Authorization" => access_token
                        })

puts response.code
puts response.body


