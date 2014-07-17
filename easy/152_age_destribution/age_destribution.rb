#!/usr/bin/env ruby -w
def age_destribution(age)
  case age
  when 0..2 then 'Home'
  when 3..4 then 'Preschool'
  when 5..11 then 'Elementary school'
  when 19..22 then 'College'
  when 23..65 then 'Work'
  when 66..100 then 'Retirement'
  else 'This program is for humans'
  end
end

ARGF.each_line do |line|
  puts age_destribution(line.chomp.to_i)
end
