<h2>Version: 0.1.7</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate
# => {:password=>"xQ2o6jCfXhtm2jk", :phonetic=>"x-ray QUEBEC 2 oscar 6 juliet CHARLIE foxtrot X-RAY hotel tango mike 2 juliet kilo "}

Nretnil::Password.generate(25,true)
# => {:password=>"0V1roG@27#eac4d-MgH1v12i2", :phonetic=>"0 VICTOR 1 romeo oscar GOLF (at) 2 7 (hash) echo alpha charlie 4 delta (dash) MIKE golf HOTEL 1 victor 1 2 india 2 "}

Nretnil::Password.generate(20,false)
# => {:password=>"04633Z0G6q90q1949QRQ", :phonetic=>"0 4 6 3 3 ZULU 0 GOLF 6 quebec 9 0 quebec 1 9 4 9 QUEBEC ROMEO QUEBEC "}

Nretnil::Password.generate(11)
# => {:password=>"7IksUf09P63", :phonetic=>"7 INDIA kilo sierra UNIFORM foxtrot 0 9 PAPA 6 3 "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"radicalredrabbitapproachproduce", :phonetic=>"radical red rabbit approach produce", :sym_sub_pass=>"r@d!c@lr3dr@bb!t@ppr0@chpr0duc3", :sym_sub_phon=>"r@d!c@l r3d r@bb!t @ppr0@ch pr0duc3"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])
# => {:password=>"b06986ee06f2b3a3a940"}

Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])[:password]
# => 4252f21eebbf746

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => 4ec19680-f725-f1f4-1841-aa8b386159c6

```

<h3>Symbol Substitution</h3>

```ruby

Nretnil::Password.sym_sub("string")
# => $tr!ng

```


## Testing
```
bundle Install
bundle exec rspec spec/spec_netnil_password.rb
```
