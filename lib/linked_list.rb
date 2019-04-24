require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    current = @head
    if current == nil
      @head = Node.new(data)
    elsif current.next_node != nil
      current = current.next_node
    elsif current.next_node == nil
      current.next_node = Node.new(data)
    end
  end

  def count
    count = 0
    current = @head
    if current == nil
      count += 0
    end
    count += 1
    while current.next_node != nil
      count += 1
      current = current.next_node
    end
    count
  end

  def to_string
    string = ""
    current = @head
    string += current.data.to_s
    while current.next_node != nil
      current = current.next_node
      string += " " + current.data.to_s
    end
    string
  end

end
