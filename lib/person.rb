# # your code goes here
#require "pry"
#
# First you need to create a person class that is initialized with a name that cannot be changed.
class Person
  attr_reader :name, :bank_account, :happiness, :hygiene
  # @bank_account = 25

  # def bank_account
  #   @bank_account = 25
  # end

  def initialize(name)
    @name = name
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
  end

def bank_account=(value)
  @bank_account = value
end


  # Happy Methods Start //////////////

  # def happiness=(number)
  #   @hygiene = number
  #   if @hygiene > 10
  #     @hygiene = 10
  #   elsif @hygiene < 0
  #     @hygiene = 0
  #   end
  #   @hygiene
  # end

  def happiness=(number)
    @happiness = number
   if @happiness > 10
     @happiness = 10
   elsif @happiness < 0
     @happiness = 0
    end
    @happiness
  end


  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def work_out
    self.happiness += 2 # self.happiness = self.happiness + 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  # Happy Methods End //////////////

  # Hygiene Methods Start //////////
  def hygiene=(number)
    @hygiene = number
   if @hygiene > 10
     @hygiene = 10
    elsif @hygiene < 0
     @hygiene = 0
    end
    @hygiene
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # Hygiene Methods End //////////

  # Bank Account Methods Start //////////

  def deposit(amt)
    @bank_account += amt
    puts "Your balance is #{@bank_account}."
  end

  def withdraw(amt)
    @bank_account -= amt
    puts "Your balance is #{@bank_account}."
  end

  def get_paid(salary)
    @bank_account += salary
    puts "Balance: #{@bank_account}"
    return "all about the benjamins"
  end

  # Call Methods Start ///////////////////
  # def call_friend(friend)
  #   self.happiness += 3
  #   puts "Hi #{friend}! It's #{self.name}. How are you?"
  #   friend.happiness += 3
  # end
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(pers, topic)
    case topic
    when "politics"
      self.happiness -= 2
      pers.happiness -= 2
       "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      pers.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  # Call Methods End ///////////////////



# XXEach instance of class Personshould be able to remember their name
# XXEach instance of class Person should start with $25 in their bank accounts
# XXEach instance of class Person should start with eight hygiene points
# XXEach instance of class Person should start with eight hygiene points
# XXThe hygiene and hygiene points should be able to change, however the maximum and minimum points for both hygiene and hygiene should be 10 and 0 respectively
# XXThe amount in the bank account should also be able to change, though it has no max or min.
# XXThe clean? and happy? methods are pretty similiar: they should return true if the hygiene or hygiene points exceed seven. Otherwise they should return false.
#
# XXThe get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
#
# XXThe take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
#
# XXThe work_out method should increment the person's hygiene by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
#
# The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's hygiene points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
#
# Finally, the start_conversation method should accept two arguments, the person to start a conversation with and the topic of conversation.

# If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
# If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
# If the topic is not politics or weather, their hygiene points don't change and the method returns "blah blah blah blah blah".
end

sarah = Person.new("Sarah")
jack = Person.new("Jack")
#binding.pry
nothing = "wuut"# your code goes here
