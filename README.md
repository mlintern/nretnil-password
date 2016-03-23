<h2>Version: 0.1.2</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate(10,symbols=true)
# => {:password=>"daO1ukAX24", :phonetic=>"delta alpha OSCAR 1 uniform kilo ALPHA X-RAY 2 4 "}

Nretnil::Password.generate(10,symbols=false)
# => {:password=>"AkDOb04vv2", :phonetic=>"ALPHA kilo DELTA OSCAR bravo 0 4 victor victor 2 "}

Nretnil::Password.generate(10)
# => {:password=>"msT8zRkR6e", :phonetic=>"mike sierra TANGO 8 zulu ROMEO kilo ROMEO 6 echo "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"yellowopossumdoproperty", :phonetic=>"yellow opossum do property"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])
# => {:password=>"227ea441b81ee7f38718"}

Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
# => 72ec096d22951eb

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => 684b5449-767a-2359-5081-7404aad955ea

```