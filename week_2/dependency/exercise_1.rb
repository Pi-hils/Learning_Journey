class Spanish
  def greet
    'Hola amiga, como estas?'
  end
 
  def feel
    'esta bien'
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
      # injecting dependenncy(injecting the arguement)
  def greeter(language)
    "In this language, we say hello, how are you like this:#{language.greet}"
  end

  def feels(feeling)
    "Testing if this works for feelinngs: #{feeling.feel}"
  end
end

greeting = Languages.new
irish = Irish.new
spanish = Spanish.new
french = French.new

p greeting.greeter(french)
p greeting.feels(french)