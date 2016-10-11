<h2>Version: 0.1.4</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate
# => {:password=>"Fpg5wb9c2hXEQ4B", :phonetic=>"FOXTROT papa golf 5 whiskey bravo 9 charlie 2 hotel X-RAY ECHO QUEBEC 4 BRAVO "}

Nretnil::Password.generate(25,true)
# => {:password=>"Z@F3&a(srb0~j!-E&5Uip*V)0", :phonetic=>"ZULU (at) FOXTROT 3 (ampersand) alpha (left parenthesis) sierra romeo bravo 0 (tilda) juliet (explamation point) (dash) ECHO (ampersand) 5 UNIFORM india papa (star) VICTOR (right parenthesis) 0 "}

Nretnil::Password.generate(20,false)
# => {:password=>"nDVA54XSBv876y48AtZL", :phonetic=>"november DELTA VICTOR ALPHA 5 4 X-RAY SIERRA BRAVO victor 8 7 6 yankee 4 8 ALPHA tango ZULU LIMA "}

Nretnil::Password.generate(11)
# => {:password=>"yRch54L885I", :phonetic=>"yankee ROMEO charlie hotel 5 4 LIMA 8 8 5 INDIA "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"redvicunaconnectsize", :phonetic=>"red vicuna connect size", :sym_sub_pass=>"r3dv!cun@c0nn3ct$!z3", :sym_sub_phon=>"r3d v!cun@ c0nn3ct $!z3"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])
# => {:password=>"1526ce48b447fba35548"}

Nretnil::Password.custom(15, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'])[:password]
# => 44253870b4fdf6d

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => 78c8726c-7a48-4a46-7126-d12ca225b26a

```

<h3>Symbol Substitution</h3>

```ruby

Nretnil::Password.sym_sub("string")
# => $tr!ng

```
