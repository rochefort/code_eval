#!/usr/bin/env ruby -w

BOARD_SIZE = 256
$board = Array.new(BOARD_SIZE, Array.new(BOARD_SIZE, 0))

def execute(command, i, j=nil)
  i = i.to_i
  j = j.to_i

  if command == 'SetRow'
    $board[i] = Array.new(BOARD_SIZE, j)
  elsif command == 'SetCol'
    $board.each { |row| row[i] = j }
  elsif command == 'QueryRow'
    puts $board[i].inject(&:+)
  elsif command == 'QueryCol'
    puts $board.inject(0) { |sum, row| sum += row[i] }
  end
end

ARGF.each_line do |line|
  execute(*(line.chomp.split))
end
