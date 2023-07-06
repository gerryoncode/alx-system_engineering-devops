#!/usr/bin/env ruby
puts ARGV[0].scans(/\[from:(.*?)\]\ [to:(.*?)\] \[flags:(.*?)\]/).join(,)
