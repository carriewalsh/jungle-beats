class Node
  attr_reader :data, :next_node

  def initialize(args)
    @data = args[:data]
    @next_node = nil
  end

end
