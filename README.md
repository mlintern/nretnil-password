<h2>Version: 0.0.3</h2>

<h1>Usage:</h1>

```ruby

puts Nretnil::Password.generate(10,true)
# => {:password=>"04^3QyUo8*", :phonetic=>"0 4 <carrot> 3 QUEBEC yankee UNIFORM oscar 8 <star> "}

puts Nretnil::Password.generate(10,false)
# => {:password=>"8e52Blv0L0", :phonetic=>"8 echo 5 2 BRAVO lima victor 0 LIMA 0 "}

puts Nretnil::Password.generate(10)
# => {:password=>"e3bw3yBZa5", :phonetic=>"echo 3 bravo whiskey 3 yankee BRAVO ZULU alpha 5 "}

puts Nretnil::Password.phrase
# => {:password=>"yellowbadgerplantafternoon", :phonetic=>"yellow badger plant afternoon"}

puts Nretnil::Password.manual(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])
# => {:password=>"f96f9d3d9f52930704c0"}

puts Nretnil::Password.manual(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
# => 259df7a1cfd284c

puts Nretnil::Password.uuid
# => 94b6c34-87e2-7c4a-a19f-f939b3b335283

```
