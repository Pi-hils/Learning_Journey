#Option 3
class Spanish
  def greet
    'Hola amiga, como estas?'
  end
 
  def feel
    'estas muy bien'
  end
end

class French
  def greet
    'Bonjour, commo ça va?'
  end

  def feel
    'très bien'
  end
end

class Irish
  def greet
    'Dia dhuit, conas atá tú?'
  end

  def feel
    'tá me go mhaith'
  end
end


class Languages
  def initialize(language) #injectinng dependency - separate our responsibility
    @language = language
  end
      # injecting dependenncy(injecting the arguement)
  def greeter
    "In this language, we say hello like this:#{@language.greet}"
  end

  def feels
    "Testing if this works for feelings: #{@language.feel}"
  end
end

irish = Irish.new
spanish = Spanish.new
french = French.new
irish_greeting = Languages.new(irish)
french_greeting = Languages.new(french)


p irish_greeting.greeter
p french_greeting.greeter
p french_greeting.feels


#How does the Lnaguages class know about the oher classes?
# The only thing congruent between the class Languages and the others is the methods mentioned (feel, greet)
# 1. Instantiate the other classes, e.g irish= Irish.new
# 2. In the main class (Langauges), we also instantiate it however it takes in a parameter called languages
# 3. the argument it will take is the instances of the other classes, e.g ilang = Language.new(irish)
# 4. We call the method on this irish language variable, ==> ilang.greeter or ilang.feels 
# 5. We can repeat steps 3 onwards for all the other languages, french and soanish etc
#This is the third option/process into injecting dependency
# IRB IS YOUR BESTFRIEND IN THIS. Test it there. Can be a little irritating but READ the errors.