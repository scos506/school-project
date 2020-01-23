#!/usr/bin/env ruby

require 'pulumi'

access_token = "pul-6070199f4d16794c4e485fcafeeff6d1770096b5"

p = Pulumi.new(access_token)

p.deploy
