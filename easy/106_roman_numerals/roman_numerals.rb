#!/usr/bin/env ruby -w

ROMAN_NUMERALS = {
  1000 => 'M',
   900 => 'CM',
   500 => 'D',
   400 => 'CD',
   100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
     9 => 'IX',
     5 => 'V',
     4 => 'IV',
     1 => 'I'
}

def change_to_roman_numeral(n)
  result = []
  ROMAN_NUMERALS.each do |k, v|
    div, mod = n.divmod(k)
    if div > 0
      # puts "#{k} : #{v} : #{div} : #{mod}"
      result << v * div
      n = mod
    end
  end
  result.join
end

ARGF.each_line do |line|
  puts change_to_roman_numeral(line.chomp.to_i)
end
