#!/usr/bin/env ruby

account_sid = "AC0ea619bebed4adba18d9bd62be7a416b"
auth_token = "b23be5bbcb88e68b33d069b9926f886d"

tw = Twilio.new(account_sid, auth_token)

tw.ping
