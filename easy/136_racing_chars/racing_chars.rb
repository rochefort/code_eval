#!/usr/bin/env ruby -w

class RacingChars
  GATE = '_'
  CHECKPOINT = 'C'
  RIGHT = '\\'
  LEFT  = '/'
  STRAIGHT = '|'
  OBSTRUCTION = '#'

  def initialize
    @bef_gate_point = 0
  end

  def race(line)
    gate_point = line.index(GATE)
    check_point = line.index(CHECKPOINT)
    if check_point
      direction = turn_direction(check_point)
      print_with_checkpoint(line.size, check_point, gate_point, direction)
      @bef_gate_point = check_point
    else
      direction = turn_direction(gate_point)
      print_without_checkpoint(line.size, gate_point, direction)
      @bef_gate_point = gate_point
    end
  end

  private

  def turn_direction(point)
    if @bef_gate_point == 0 ||
       @bef_gate_point == point
      STRAIGHT
    elsif @bef_gate_point > point
      LEFT
    else
      RIGHT
    end
  end

  def print_result(line_size)
    line_size.times { |n| print yield(n) }
    print "\n"
  end

  def print_with_checkpoint(line_size, check_point, gate_point, direction)
    print_result(line_size) do |n|
      if n == check_point
        direction
      elsif n == gate_point
        GATE
      else
        OBSTRUCTION
      end
    end
  end

  def print_without_checkpoint(line_size, gate_point, direction)
    print_result(line_size) do |n|
      (n == gate_point) ? direction : OBSTRUCTION
    end
  end
end

rc = RacingChars.new
ARGF.each_line do |line|
  rc.race(line.chomp)
end
