#!/usr/bin/env ruby

require 'httparty'
require 'json'

token = "uGzLSHiAMS73uA.atlasv1.OLT2mEZMy29ixbGlKhQAyb0kxCkZIfLxz0rR7U3B6YVOfHzAzhc296HvK0UOTAmXaYk"

response = HTTParty.get("https:/terraform.io/api/something",
                        :headers => {
                          "Authorization" => token
                        })

puts response.code
obj = JSON.parse(response.body)

obj.each do |k,v|
  puts "#{k} => #{v}"
end
