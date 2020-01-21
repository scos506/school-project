#!/usr/bin/env ruby

require 'httparty'

API_KEY = "zpvqvbt7xr5il0h"
SEC_KEY = "ike0kw3c92k9zmx"

response = HTTParty.get("https://api.dropbox.com/folders",
                        :headers => {
                          "Authorization" => "#{API_KEY}#{SEC_KEY}",
                          "Accept" => "application/json"
                        })

puts response.code
puts response.body


