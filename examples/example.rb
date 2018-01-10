#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'
require 'nretnil-password'

puts '<h3>Password</h3>'
puts "\n"

puts '```ruby'
puts "\n"

puts 'Nretnil::Password.generate'
puts '# => ' + Nretnil::Password.generate.to_s
puts "\n"

puts 'Nretnil::Password.generate(25,true)'
puts '# => ' + Nretnil::Password.generate(25, true).to_s
puts "\n"

puts 'Nretnil::Password.generate(20,false)'
puts '# => ' + Nretnil::Password.generate(20, false).to_s
puts "\n"

puts 'Nretnil::Password.generate(11)'
puts '# => ' + Nretnil::Password.generate(11).to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Passphrase</h3>'
puts "\n"

puts '```ruby'
puts "\n"

puts 'Nretnil::Password.phrase'
puts '# => ' + Nretnil::Password.phrase.to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Custom</h3>'
puts "\n"

puts '```ruby'
puts "\n"

puts 'Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, \'a\', \'b\', \'c\', \'d\', \'e\', \'f\'])'
puts '# => ' + Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f']).to_s
puts "\n"

puts 'Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, \'a\', \'b\', \'c\', \'d\', \'e\', \'f\'])[:password]'
puts '# => ' + Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])[:password]
puts "\n"

puts '```'
puts "\n"

puts '<h3>Phonetic</h3>'
puts "\n"

puts '```ruby'
puts "\n"

password = 'aBcD 1234 !@#$'

puts "password=\"#{password}\"\n\n"

puts 'Nretnil::Password.to_phonetic(password)'
puts '# => ' + Nretnil::Password.to_phonetic(password).to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>UUID</h3>'
puts "\n"

puts '```ruby'
puts "\n"

puts 'Nretnil::Password.uuid'
puts '# => ' + Nretnil::Password.uuid
puts "\n"

puts '```'
puts "\n"

puts '<h3>Symbol Substitution</h3>'
puts "\n"

puts '```ruby'
puts "\n"

puts 'Nretnil::Password.sym_sub("string")'
puts '# => ' + Nretnil::Password.sym_sub('string')
puts "\n"

puts '```'
puts "\n"
