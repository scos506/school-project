#!/usr/bin/env ruby

require 'pulumi'

access_token = "1234"

p = Pulumi.new(access_token)

p.deploy
