<h2>Version: 0.1.0</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate(10,true)
# => {:password=>"mB6#a!^w*4", :phonetic=>"mike BRAVO 6 <hash> alpha <explamation point> <carrot> whiskey <star> 4 "}

Nretnil::Password.generate(10,false)
# => {:password=>"6838IY21jz", :phonetic=>"6 8 3 8 INDIA YANKEE 2 1 juliet zulu "}

Nretnil::Password.generate(10)
# => {:password=>"8k9xQ849Em", :phonetic=>"8 kilo 9 x-ray QUEBEC 8 4 9 ECHO mike "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"tanhyenacorrelatepot", :phonetic=>"tan hyena correlate pot"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])
# => {:password=>"3ed246f7915d96a956fc"}

Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
# => 8b6b1821fb00301

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => da75332-2dfe-42e3-e422-fc355633e92cd

```