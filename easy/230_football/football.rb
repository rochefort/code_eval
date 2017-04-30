#!/usr/bin/env ruby -w

def teams_by_country(teams)
  countries = teams.flatten.sort.uniq
  results = []
  countries.each do |country|
    result = []
    teams.each_with_index do |team, i|
      result << "#{i + 1}" if team.include?(country)
    end
    results << "#{country}:#{result.join(",")};"
  end
  results.join(" ")
end

ARGF.each_line do |line|
  teams = line.chomp.split(" | ").map { |t| t.split.map(&:to_i) }
  puts teams_by_country(teams)
end
