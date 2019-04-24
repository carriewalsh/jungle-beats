class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def count
    @list.count
  end

  def append(string)
    current_string = string
    word = ""
    until current_string.length == 0
      if current_string.chr != " "
        word += string.chr
      else
        @list.append(word)
        word = ""
      end
      current_string[0] = ""
    end
    @list.append(word)
  end
end
