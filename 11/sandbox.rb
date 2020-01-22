#!/usr/bin/env ruby

require 'json'
require 'mailgun'

obj = JSON.parse(File.read("config.json"))

mg = Mailgun.new(obj)

mg.send_email("to: test@example.com", "subject: hello")
