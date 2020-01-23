#!/usr/bin/env ruby

account_sid = "1234"
auth_token = "5678"

tw = Twilio.new(account_sid, auth_token)

tw.ping
