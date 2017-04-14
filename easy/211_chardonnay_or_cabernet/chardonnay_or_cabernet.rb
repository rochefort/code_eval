#!/usr/bin/env ruby -w

def find_candidates(wines, keyword)
  # 正規表現で実装したが、score 100 にならなかった
  # pattern = /#{keyword.split("").join("(.*?)")}/i
  # wines.find_all { |wine| wine =~ pattern }

  wines.inject([]) do |candidates, wine|
    wine_str = wine.dup.downcase
    candidates << wine if keyword.each_char.all? { |char| wine_str.sub!(char, "") }
    candidates
  end
end

ARGF.each_line do |line|
  str_wines, keyword = line.chomp.split(" | ")
  wines = str_wines.split
  candidates = find_candidates(wines, keyword)
  puts (candidates.empty? ? "False" : candidates.join(" "))
end
