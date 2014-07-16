#!/usr/bin/env ruby -w
require 'date'

def working_experience(periods)
  total_months = []
  periods.each do |period|
    from, to = period.split('-').map { |pe| DateTime.strptime(pe, "%b %Y") }
    total_months += difference_months(from, to)
    total_months.uniq!
  end
  total_months.size / 12
end

def difference_months(from, to)
  months = []
  tmp_date = from
  while tmp_date <= to
    months << "#{tmp_date.year}#{tmp_date.month}"
    tmp_date = tmp_date >> 1
  end
  months
end

ARGF.each_line do |line|
  puts working_experience(line.chomp.split('; '))
end
