#!/usr/bin/env ruby -w

def separate_digits_words(args)
  words, digits = [], []

  args.each do |arg|
    if digit?(arg)
      digits << arg
    else
      words << arg
    end
  end
  format(words, digits)
end

def format(words, digits)
  res = words.join(',')
  res << '|' if !words.empty? && !digits.empty?
  res << digits.join(',')
end

def digit?(str)
  str.to_i.to_s == str
end

ARGF.each_line do |line|
  args = line.chomp.split(',')
  puts separate_digits_words(args)
end
