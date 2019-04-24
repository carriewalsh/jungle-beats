class JungleBeat
  attr_reader :list
  attr_accessor :rate

  def initialize
    @list = LinkedList.new
    @rate = 200
  end

  def count
    @list.count
  end

  def append(string)
    if string.length > 0
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

  def play
    `say -r #{@rate} #{@list.to_string}`
    @list.to_string
  end
end
