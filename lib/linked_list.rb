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
      last
    end
  end

  def find(index,amount)
    new_list = LinkedList.new
    count = 0
    current = @head
    if current
      if self.count > index
        until count == index
          count += 1
          current = current.next_node
        end
        if amount > self.count
          until new_list.count == self.count - index
            new_list.append(current.data)
            current = current.next_node
          end
        else
          until new_list.count == amount
            new_list.append(current.data)
            current = current.next_node
          end
        end
      end
    end
    new_list.to_string
  end

  def include?(data)
    list = self
    current = list.pop
    if current
      until list.count == 0 || current.data == data
        current = list.pop
      end
      if current.data == data
        return true
      else
        return false
      end
    else
      return false
    end
  end
end
