#!/usr/bin/env ruby -w

module Chess
  class Knight
    # The codepoint of `a` is 97.
    # The `a` is regarded as `1` in this program.
    CORDINATE_DIFFERENCE_NUM = 96
    def initialize
      x = [1, -1].product [2, -2]
      y = [2, -2].product [1, -1]
      @moving_patterns = x + y
    end

    def candidates(x, y)
      x = alphabet_to_cordinate(x)
      y = y.to_i
      @moving_patterns.inject([]) do |result, pattern|
        a = x + pattern[0]
        b = y + pattern[1]
        result << "#{cordinate_to_alphabet(a)}#{b}" if include_board?(a) && include_board?(b)
        result
      end
    end

    private
      def include_board?(n)
        n >= 1 && n <= 8
      end

      def alphabet_to_cordinate(str)
        str.ord - CORDINATE_DIFFERENCE_NUM
      end

      def cordinate_to_alphabet(x)
        (x + CORDINATE_DIFFERENCE_NUM).chr
      end
  end
end

knight = Chess::Knight.new
ARGF.each_line do |line|
  x, y = line.chomp.split("")
  puts knight.candidates(x, y).sort.join(" ")
end
