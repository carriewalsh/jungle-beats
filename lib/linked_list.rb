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
    else
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def count
    count = 0
    current = @head
    if current == nil
    else
      count += 1
      while current.next_node != nil
        count += 1
        current = current.next_node
      end
    end
    count
  end

  def to_string
    string = ""
    current = @head
    if current == nil
    else
      string += current.data.to_s
      while current.next_node != nil
        current = current.next_node
        string += " " + current.data.to_s
      end
    end
    string
  end

  def insert(index,data)
    count = 0
    current = @head
    if count == index
      prepend(data)
    else
      until count + 1 == index
        count += 1
        current = current.next_node
      end
      next_node = current.next_node
      current.next_node = Node.new(data)
      current.next_node.next_node = next_node
    end
  end

  def prepend(data)
    current = @head
    @head = Node.new(data)
    @head.next_node = current
  end

  def pop
    current = @head
    if current
      if current.next_node
        until current.next_node.next_node == nil
          current = current.next_node
        end
        last = current.next_node
        current.next_node = nil
      else
        last = current
        @head = nil
      end
      last.data
    end
  end

  def find(index,amount)

  end

  def include?(data)

  end

end
