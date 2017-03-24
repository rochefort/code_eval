#!/usr/bin/env ruby -w
class SlangFlavor
  SLANGS = [
    ", yeah!",
    ", this is crazy, I tell ya.",
    ", can U believe this?",
    ", eh?",
    ", aw yea.",
    ", yo.",
    "? No way!",
    ". Awesome!"
  ]
  SLANGS_SIZE = SLANGS.size.freeze

  def initialize
    @called_count = 0
  end

  def replace(sentence)
    @called_count += 1
    return sentence if @called_count.odd?

    slang_index = (@called_count / 2) % SLANGS_SIZE - 1
    "#{sentence[0..-2]}#{SLANGS[slang_index]}"
  end
end

slang_flavor = SlangFlavor.new
ARGF.each_line do |line|
  sentences = line.chomp.scan(/.+?[.!?]/)
  puts sentences.map { |sentence| slang_flavor.replace(sentence) }.join
end
