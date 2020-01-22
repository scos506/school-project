#!/usr/bin/env ruby

require 'httparty'
require 'json'

api_key = "!234"

response = HTTParty.get("https://api.psotman.com/do/something",
                        :headers => {
                          "Auth" => api_key
                        })

puts response.code
obj = JSON.parse(response.body)
obj.each do |x|
  puts x.inspect
end
