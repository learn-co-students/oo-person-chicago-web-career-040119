class Person

  attr_reader :name, :happiness, :hygiene 
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  #custom writer, controlling for happiness value
  def happiness=(num)
    @happiness = num
    @happiness > 10 ? @happiness = 10 : @happiness
    @happiness < 0 ? @happiness = 0 : @happiness
  end
  
  #custom writer, controlling for hygeine value
  def hygiene=(num)
    @hygiene = num
    @hygiene > 10 ? @hygiene = 10 : @hygiene
    @hygiene < 0 ? @hygiene = 0 : @hygiene
  end
  
  def clean?
    self.hygiene > 7
  end
  
  def happy?
    self.happiness > 7
  end
  
  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
       "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  end
