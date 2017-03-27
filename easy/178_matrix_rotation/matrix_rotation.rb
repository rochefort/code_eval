#!/usr/bin/env ruby -w
def generate_matrix(numbers)
  n = Math.sqrt(numbers.size).to_i
  numbers.each_slice(n).to_a
end

def rotate(matrix)
  matrix_size = matrix.size
  result = Array.new(matrix_size) { [] }
  matrix.each_with_index do |line, i|
    line.each_with_index do |elm, j|
      result[j][matrix_size - i - 1] = elm
    end
  end
  result
end

ARGF.each_line do |line|
  matrix = generate_matrix(line.chomp.split)
  puts rotate(matrix).join(" ")
end

# reverse and transpose
# def generate_matrix(numbers)
#   n = Math.sqrt(numbers.size).to_i
#   numbers.each_slice(n).to_a
# end
#
# class Array
#   def rotate(n = 1)
#     (n % 4).times { self.replace(self.reverse.transpose) }
#     self
#   end
# end
#
# ARGF.each_line do |line|
#   matrix = generate_matrix(line.chomp.split)
#   puts matrix.rotate.join(" ")
# end
