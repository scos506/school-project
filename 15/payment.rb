#!/usr/bin/env ruby

pub_key = "pk_test_1234"
sec_key = "sk_test_1234"

prod_keys = "pk_live_1234"
prod_sec = "sk_live_1234"

s = Stripe.new(pub_key, sec_key)

s.invoices.each do |inv|
  puts inv.name
  puts inv.amount
end
