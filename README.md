<h2>Version: 0.1.2</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate
# => {:password=>"0z1445F302uVYAK", :phonetic=>"0 zulu 1 4 4 5 FOXTROT 3 0 2 uniform VICTOR YANKEE ALPHA KILO "}

Nretnil::Password.generate(25,symbols=true)
# => {:password=>"nS807C4r835Cvm$Fi!0Oj*97x", :phonetic=>"november SIERRA 8 0 7 CHARLIE 4 romeo 8 3 5 CHARLIE victor mike (dollar sign) FOXTROT india (explamation point) 0 OSCAR juliet (star) 9 7 x-ray "}

Nretnil::Password.generate(20,symbols=false)
# => {:password=>"Nww6ZiHuyVgN4qW7Vv18", :phonetic=>"NOVEMBER whiskey whiskey 6 ZULU india HOTEL uniform yankee VICTOR golf NOVEMBER 4 quebec WHISKEY 7 VICTOR victor 1 8 "}

Nretnil::Password.generate(11)
# => {:password=>"49vuX4up799", :phonetic=>"4 9 victor uniform X-RAY 4 uniform papa 7 9 9 "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"violetchinchillaregretbulb", :phonetic=>"violet chinchilla regret bulb"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])
# => {:password=>"84b0edc11e6c272dc68b"}

Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
# => 91448e586f470ae

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => e6caf410-8cb4-dddf-337f-dc4c6883a742

```
