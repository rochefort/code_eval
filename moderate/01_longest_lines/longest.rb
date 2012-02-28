#!/usr/bin/env ruby

extract_size = ARGF.readline.chomp.to_i
puts ARGF.readlines.sort_by{ |x| -x.size }[0, extract_size]

