require 'rubygems'
require 'nretnil-password'


puts "<h3>Password</h3>"
puts "\n"

puts "```ruby"
puts "\n"

puts "Nretnil::Password.generate(10,symbols=true)"
puts "# => " + Nretnil::Password.generate(10,symbols=true).to_s
puts "\n"

puts "Nretnil::Password.generate(10,symbols=false)"
puts "# => " + Nretnil::Password.generate(10,symbols=false).to_s
puts "\n"

puts "Nretnil::Password.generate(10)"
puts "# => " + Nretnil::Password.generate(10).to_s
puts "\n"

puts "```"
puts "\n"

puts "<h3>Passphrase</h3>"
puts "\n"

puts "```ruby"
puts "\n"

puts "Nretnil::Password.phrase"
puts "# => " + Nretnil::Password.phrase.to_s
puts "\n"

puts "```"
puts "\n"

puts "<h3>Custom</h3>"
puts "\n"

puts "```ruby"
puts "\n"

puts 'Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])'
puts "# => " + Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"]).to_s
puts "\n"

puts 'Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]'
puts "# => " + Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
puts "\n"

puts "```"
puts "\n"

puts "<h3>UUID</h3>"
puts "\n"

puts "```ruby"
puts "\n"

puts "Nretnil::Password.uuid"
puts "# => " + Nretnil::Password.uuid
puts "\n"

puts "```"
puts "\n"