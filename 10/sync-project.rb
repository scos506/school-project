#!/usr/bin/env ruby

require 'httparty'
require 'json'

token = "12345"

response = HTTParty.get("https:/terraform.io/api/something",
                        :headers => {
                          "Authorization" => token
                        })

puts response.code
obj = JSON.parse(response.body)

obj.each do |k,v|
  puts "#{k} => #{v}"
end
