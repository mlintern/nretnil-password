require 'rubygems'
require 'nretnil-password'

puts Nretnil::Password.generate(10,true)

puts Nretnil::Password.generate(10,false)

puts Nretnil::Password.generate(10)

puts Nretnil::Password.phrase

puts Nretnil::Password.manual(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])

puts Nretnil::Password.manual(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]

puts Nretnil::Password.uuid