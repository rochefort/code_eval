#!/usr/bin/env ruby -w
require 'json'

def sum_json_menu_ids(json)
  sum = 0
  json['menu']['items'].each do |item|
    next unless item
    sum += item['id'].to_i if item['label']
  end
  sum
end

ARGF.each_line do |line|
  line.chomp!
  next if line.size.zero?
  json = JSON.parse(line)
  puts sum_json_menu_ids(json)
end
