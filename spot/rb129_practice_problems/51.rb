# The following is a short description of an application that
# lets a customer place an order for a meal:

# - A meal always has three meal items: a burger, a side, and drink.
# - For each meal item, the customer must choose an option.
# - The application must compute the total cost of the order.

# 1. Identify the nouns and verbs we need in order to model our classes
# and methods.

# 2. Create an outline in code (a spike) of the structure of this
# application.

# 3. Place methods in the appropriate classes to correspond
# with various verbs.

=begin

nouns: meal, meal item, burger/side/drink, customer, option, cost,
order, application
verbs: choose option, compute total cost

meal
- burger (with options)
- side (options)
- drink (options)

application
- initializes a meal
  - in meal initialization:
    - initializes each item
      - (which prompts options)
- compute total cost
  - each item in meal has a cost

=end

class Application
  def initialize
    order = Meal.new
  end
end

class Meal
  def initialize
    burger = Burger.new
    side = Side.new
    drink = Drink.new
  end
end

class MealItem
  def initialize
    choose_options
    @choice = 
  end

  def choose_options
    # Choose @options.join(', ') options
    # @choice = gets.chomp
    # cost = .. well make it a hash, 
  end
end

class Burger
  def initialize
    @options = { chicken: 4.99, beef: 5.99 }
    super
  end
end

