#!/usr/bin/env ruby

require 'aws'

aws.init_config
aws.ec2.instances.each do |inst|
  puts inst.hostname
end
