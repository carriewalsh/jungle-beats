require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"
require "./lib/node"
require "pry"

class LinkedListTest < MiniTest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_linked_list_starts_with_no_head
    assert_nil @linked_list.head
  end

  def test_nodes_can_be_appended
    @linked_list.append("plop")
    assert_equal "plop", @linked_list.head.data
  end

  def test_nodes_can_be_counted
    @linked_list.append("plop")
    assert_equal 1, @linked_list.count
  end

  def test_list_can_be_concatenated_to_a_string
    @linked_list.append("plop")
    assert_equal "plop", @linked_list.to_string
  end
end
