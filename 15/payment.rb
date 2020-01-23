#!/usr/bin/env ruby

pub_key = "pk_test_B6Kk8gdH0E2Rorzid5qB6t98000VO2KVtw"
sec_key = "sk_test_PeUmONAQKA5tfMVEJ2sjl3vI00A5fTgvfp"

prod_keys = "pk_live_B6Kk8gdH0E2Rorzid5qB6t98000VO2KVtw"
prod_sec = "sk_live_PeUmONAQKA5tfMVEJ2sjl3vI00A5fTgvfp"

s = Stripe.new(pub_key, sec_key)

s.invoices.each do |inv|
  puts inv.name
  puts inv.amount
end
