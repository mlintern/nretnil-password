require 'rubygems'
require 'nretnil-password'

puts Nretnil::Password.generate(10,true)
puts Nretnil::Password.manual(10,[0,1,2,3,4,5,6,7,8,9])
puts Nretnil::Password.phrase