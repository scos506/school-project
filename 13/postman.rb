#!/usr/bin/env ruby

require 'httparty'
require 'json'

api_key = "PMAK-5e27b93f7cce8f0031c6a037-2620be2af1814805011d91426c70acd282"

response = HTTParty.get("https://api.psotman.com/do/something",
                        :headers => {
                          "Auth" => api_key
                        })

puts response.code
obj = JSON.parse(response.body)
obj.each do |x|
  puts x.inspect
end
