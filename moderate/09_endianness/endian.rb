#!/usr/bin/env ruby
system, big, little = %w(s2, n2, v2).map{ |tpl| [1,2].pack tpl }

case system
when big; puts 'BigEndian'
when little; puts 'LittleEndian'
end
