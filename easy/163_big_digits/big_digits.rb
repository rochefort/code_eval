#!/usr/bin/env ruby -w
class String
  def unindent
    margin = scan(/^ +/).map(&:size).min
    gsub(/^ {#{margin}}/, '')
  end
end

class BigDigitConverter
  def print(chars)
    rtn = Array.new(6)
    chars.each_char do |c|
      big_digit = convert(c)
      rtn = rtn.zip(big_digit) if big_digit
    end
    rtn.each { |line| puts line.join }
  end

  private
  def convert(c)
    str =
      case c
      when '0' then zero
      when '1' then one
      when '2' then two
      when '3' then three
      when '4' then four
      when '5' then five
      when '6' then six
      when '7' then seven
      when '8' then eight
      when '9' then nine
      else return nil
      end
    str.each_line.map(&:chomp)
  end

  def zero
    <<-EOF.unindent
    -**--
    *--*-
    *--*-
    *--*-
    -**--
    -----
    EOF
  end

  def one
    <<-EOF.unindent
    --*--
    -**--
    --*--
    --*--
    -***-
    -----
    EOF
  end

  def two
    <<-EOF.unindent
    ***--
    ---*-
    -**--
    *----
    ****-
    -----
    EOF
  end

  def three
    <<-EOF.unindent
    ***--
    ---*-
    -**--
    ---*-
    ***--
    -----
    EOF
  end

  def four
    <<-EOF.unindent
    -*---
    *--*-
    ****-
    ---*-
    ---*-
    -----
    EOF
  end

  def five
    <<-EOF.unindent
    ****-
    *----
    ***--
    ---*-
    ***--
    -----
    EOF
  end

  def six
    <<-EOF.unindent
    -**--
    *----
    ***--
    *--*-
    -**--
    -----
    EOF
  end

  def seven
    <<-EOF.unindent
    ****-
    ---*-
    --*--
    -*---
    -*---
    -----
    EOF
  end

  def eight
    <<-EOF.unindent
    -**--
    *--*-
    -**--
    *--*-
    -**--
    -----
    EOF
  end

  def nine
    <<-EOF.unindent
    -**--
    *--*-
    -***-
    ---*-
    -**--
    -----
    EOF
  end
end

ARGF.each_line do |line|
  converter = BigDigitConverter.new
  converter.print(line.chomp)
end
