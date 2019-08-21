class Item
  attr_reader :id
  attr_accessor :name

  def initialize(name)
    @name = name
    @id = @@list.length + 1
  end

end  
