## Welcome!

#### Task 1 - Solution

Step 1 : Go into root folder

```
cd comcast-ror-challenge
```

Step 2 : Create a object of Orange class

```
Orange.create(variety: 'Nagpuri')
```

See after_save callback will not executed

Step 3 : Create a object of Apple class

```
Apple.create(variety: 'Kashmiri')
```

after save callback will execute & will print the message '--- ** -- Juice is ready -- ** ---'

#### Task 2 - Solution

Step 1 : First create 50 baskets each having a capacity between 2 and 27, inclusive.

```
rake db:seed
```

Step 2 : Execute below rake task to add apples into baskets with variety & capacity

```
rake apple:add_apple_to_basket['Kashmiri',555]
```

#### Task 3 - Solution

You have two open IRB shells in separate terminal windows.
The first shell has the following code already entered:

Shell 1

```ruby
class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')

File.write('apple_obj.txt', Marshal.dump(apple))

```

Shell 2

```ruby
class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

  str = File.open('apple_obj.txt').read
  apple = Marshal.load(str)
```

## Thank you for your time.
