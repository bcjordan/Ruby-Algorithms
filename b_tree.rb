class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def insert(value)
    if value < @value
      if @left
        @left.insert(value)
      else
        @left = Node.new(value)
      end
    elsif value > @value
      if @right
        @right.insert(value)
      else
        @right = Node.new(value)
      end
    else
      # Node already in tree
    end
  end

  def to_s
    print "Value: #{@value}\tL: #{@left if @left} \tR:#{@right if @right}"
  end
end
