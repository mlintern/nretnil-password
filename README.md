<h2>Version: 0.2.1</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate
# => {:password=>"6SoiSo979F1IUva", :phonetic=>"6 SIERRA oscar india SIERRA oscar 9 7 9 FOXTROT 1 INDIA UNIFORM victor alpha"}

Nretnil::Password.generate(25,true)
# => {:password=>"m0#~~2fC)xQ9FrA9EhV2ya7WZ", :phonetic=>"mike 0 (hash) (tilda) (tilda) 2 foxtrot CHARLIE (right-parenthesis) x-ray QUEBEC 9 FOXTROT romeo ALPHA 9 ECHO hotel VICTOR 2 yankee alpha 7 WHISKEY ZULU"}

Nretnil::Password.generate(20,false)
# => {:password=>"7eS92RRJYIQFK33L9hhP", :phonetic=>"7 echo SIERRA 9 2 ROMEO ROMEO JULIET YANKEE INDIA QUEBEC FOXTROT KILO 3 3 LIMA 9 hotel hotel PAPA"}

Nretnil::Password.generate(11)
# => {:password=>"sw1czI13iTt", :phonetic=>"sierra whiskey 1 charlie zulu INDIA 1 3 india TANGO tango"}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"earthyellowmuskdeersitbike", :phonetic=>"earth yellow musk deer sit bike", :sym_sub_pass=>"3@rthy3ll0wmu$kd33r$!tb!k3", :sym_sub_phon=>"3@rth y3ll0w mu$k d33r $!t b!k3"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])
# => {:password=>"4aed41ac2bf4846ae3e0"}

Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])[:password]
# => 6a94a8a763b4c3b

```

<h3>Phonetic</h3>

```ruby

password="aBcD 1234 !@#$"

Nretnil::Password.to_phonetic(password)
# => (ALPHA) (CAPITAL-BRAVO) (CHARLIE) (CAPITAL-DELTA) (SPACE) (WUN) (TOO) (TREE) (ROW ER) (SPACE) (EXCLAMATION-POINT) (AT) (HASH) (DOLLAR-SIGN)

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => c48ff793-aacb-e4de-2cb1-ef525633c42f

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
