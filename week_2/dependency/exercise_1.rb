class Spanish
  def greet
    'Hola amiga, como estas?'
  end
end

class French
  def greet
    'Bonjour, commo ça va?'
  end
end

class Irish
  def greet
    'Dia dhuit, conas atá tú?'
  end
end


class Languages
      # injecting dependenncy(injecting the arguement)
  def greeter(language)

    "In this language, we say hello, how are you like this:#{language.greet}"
  end
end

greeting = Languages.new
irish = Irish.new
spanish = Spanish.new
french = French.new

p greeting.greeter(french)
p greeting.greeter(irish)