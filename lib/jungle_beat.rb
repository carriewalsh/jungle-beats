class JungleBeat
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @rate = 200
    @voice = "Alex"
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
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
    @list.to_string
  end

  def reset_voice
    @voice = "Alex"
  end
end
