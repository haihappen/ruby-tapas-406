sigils = { "ERROR" => "*", "FATAL" => "!", "WARN" => "?" }
output = open("shodan.log").each_line.grep(/ERROR|FATAL/) {|line|
  "#{sigils[$&]} #{$'.strip}"
}
puts output
