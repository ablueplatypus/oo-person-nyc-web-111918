require 'pry'
class Person

#can these change the answer should be YES!
attr_accessor :bank_account
#can these change? the answer should be NO!
#since happiness and hygiene needed cutsom ways to increment
#we made them read only and created custom happiness= method, same for hygiene
attr_reader :name, :happiness, :hygiene

 #these items should all be set when a person is created!
 #You can create a person wow!
  def initialize(name)
    @name = name #only need a name to initialize
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end #end of initialize

  def happiness=(happiness)
    if happiness < 0
      puts "Sorry you can't make happiness less than zero."
      # your are not doing anything to prevent this from happening
      happiness = 0
    elsif happiness > 10
      puts "Sorry you can't make happiness greater than 10."
      happiness = 10
    end
    @happiness = happiness #need to store this in an instance variable.
  end

  def hygiene=(hygiene)
    if hygiene < 0
      puts "Sorry you can't make hygiene less than zero."
      # your are not doing anything to prevent this from happening
      hygiene = 0
    elsif hygiene > 10
      puts "Sorry you can't make hygiene greater than 10."
      hygiene = 10
    end
    @hygiene = hygiene
  end


  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
     @bank_account += salary
     "all about the benjamins"
  end

  def take_bath
    #who is taking a bath? You are!
    #you need to use self is the class!!
      self.hygiene = @hygiene + 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
   self.happiness = @happiness + 2
   self.hygiene = @hygiene - 3
   "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    #this increments the persons calling happiness by 3
    self.happiness  = @happiness + 3
    #this does not work because there is not a happiness method tide to the string.
    #friend.happiness = @happiness + 3
    #how do I make the friends happiness go up?
    friend.happiness += 3

  #binding.pry
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(name, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      #need to increase other persons happiness
      name.happiness = name.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      #need to increase other persons happiness
      name.happiness = name.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end #end of class Person

p1 = Person.new("Stella")
p2 = Person.new("Matt")


#binding.pry
