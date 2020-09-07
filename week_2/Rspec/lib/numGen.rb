class NumGenerator
  def random
    "A"*rand(1..10)
  end

  def add(a,b)
    a + b
  end
end

class ImageFlipper
  def initialize(editor)
    @editor = editor
  end

  def edit(file)
    @editor.edit(file)
  end
  

end