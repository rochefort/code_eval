#!/usr/bin/env ruby
# http://stackoverflow.com/questions/1156601/whats-the-state-of-the-art-in-email-validation-for-rails

def valid_email?(email)
  !!email.match(/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+$/)
end

ARGF.lines do |line|
  puts valid_email?(line.chomp)
end
