<h2>Version: 0.1.0</h2>

<h1>Usage:</h1>

<h3>Password</h3>

```ruby

Nretnil::Password.generate(10,true)
# => {:password=>"M7J+S5N2W9", :phonetic=>"MIKE 7 JULIET <plus> SIERRA 5 NOVEMBER 2 WHISKEY 9 "}

Nretnil::Password.generate(10,false)
# => {:password=>"K4SmMtLDHd", :phonetic=>"KILO 4 SIERRA mike MIKE tango LIMA DELTA HOTEL delta "}

Nretnil::Password.generate(10)
# => {:password=>"N0I71bOGTH", :phonetic=>"NOVEMBER 0 INDIA 7 1 bravo OSCAR GOLF TANGO HOTEL "}

```

<h3>Passphrase</h3>

```ruby

Nretnil::Password.phrase
# => {:password=>"tomatowhalesellvolcano", :phonetic=>"tomato whale sell volcano"}

```

<h3>Custom</h3>

```ruby

Nretnil::Password.custom(20,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])
# => {:password=>"962b06ec69d558a881ec"}

Nretnil::Password.custom(15,[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"])[:password]
# => e4333daed367b0f

```

<h3>UUID</h3>

```ruby

Nretnil::Password.uuid
# => f5583fd4-8527-3786-085f-dd0017ecbca3

```