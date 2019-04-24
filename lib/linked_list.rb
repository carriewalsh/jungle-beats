require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    end
  end

  def count
    count = 0
    if @head == nil
      count += 0
    elsif @head.next_node == nil
      count += 1
    end
    # while next_node != nil
    #   count
    # end
  end

  def to_string
    string = ""
    string += @head.data.to_s
    if @head.next_node
      string += @head.next_node.data.to_s
    end
    string
  end

end
