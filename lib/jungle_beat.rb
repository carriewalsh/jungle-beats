class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def count
    @list.count
  end
end
