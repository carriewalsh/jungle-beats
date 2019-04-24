require "minitest/autorun"
require "minitest/pride"
require "pry"

require "./lib/node"


class NodeTest < Minitest::Test
  def setup
    @node = Node.new(data: "plop")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_has_data
    assert_equal "plop", @node.data
  end

  def test_node_starts_with_no_next_node
    assert_nil @node.next_node
  end
end
