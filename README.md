<h2>Version: 0.1.4</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate
# => {:password=>"u26b90K6OZy94s5", :phonetic=>"uniform 2 6 bravo 9 0 KILO 6 OSCAR ZULU yankee 9 4 sierra 5 "}

Nretnil::Password.generate(25,true)
# => {:password=>"d7wZ512D%#sdl)^PlU@1VJa^$", :phonetic=>"delta 7 whiskey ZULU 5 1 2 DELTA (percent sign) (hash) sierra delta lima (right parenthesis) (carrot) PAPA lima UNIFORM (at) 1 VICTOR JULIET alpha (carrot) (dollar sign) "}

Nretnil::Password.generate(20,false)
# => {:password=>"D9R1h72VZ6Tx0843x7VG", :phonetic=>"DELTA 9 ROMEO 1 hotel 7 2 VICTOR ZULU 6 TANGO x-ray 0 8 4 3 x-ray 7 VICTOR GOLF "}

Nretnil::Password.generate(11)
# => {:password=>"rk6MQ9nFB90", :phonetic=>"romeo kilo 6 MIKE QUEBEC 9 november FOXTROT BRAVO 9 0 "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"midnightbluestallionstainnet", :phonetic=>"midnightblue stallion stain net"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])
# => {:password=>"f12e78b27fcd11dcc561"}

Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])[:password]
# => 38e976c20c36ae2

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => 7af44680-88fa-8732-7784-fc453be9917e

```
