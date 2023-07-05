#!/usr/bin/env ruby
puts ARGV[0].scan(/\[from:(\+?\d*)\]\s\[to:(\+?\d*)\]\s\[flags:(\S*)\]/).join(, )
