sigils = { "ERROR" => "*", "FATAL" => "!", "WARN" => "?" }
output = open("shodan.log").each_line.grep(Regexp.union(sigils.keys)) {|line|
  "#{sigils[$&]} #{$'.strip}"
}
puts output
