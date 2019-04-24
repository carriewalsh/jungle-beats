require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"
require "./lib/node"
require "pry"

class LinkedListTest < MiniTest::Test
  def setup
    @linked_list = LinkedList.new
    @linked_list.append("plop")
    @linked_list.append("doop")
    @linked_list.append("derp")
    @linked_list2 = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_linked_list_starts_with_no_head
    assert_nil @linked_list2.head
  end

  def test_nodes_can_be_appended
    @linked_list2.append("plop")
    assert_equal "plop", @linked_list2.head.data
    @linked_list2.append("doop")
    assert_equal "doop", @linked_list2.head.next_node.data
    @linked_list2.append("derp")
    assert_equal "derp", @linked_list2.head.next_node.next_node.data
  end

  def test_nodes_can_be_counted
    assert_equal 0, @linked_list2.count
    @linked_list2.append("plop")
    assert_equal 1, @linked_list2.count
    @linked_list2.append("doop")
    assert_equal 2, @linked_list2.count
    @linked_list2.append("derp")
    assert_equal 3, @linked_list2.count
  end

  def test_list_can_be_concatenated_to_a_string
    assert_equal "", @linked_list2.to_string
    @linked_list2.append("plop")
    assert_equal "plop", @linked_list2.to_string
    @linked_list2.append("doop")
    assert_equal "plop doop", @linked_list2.to_string
    @linked_list2.append("derp")
    assert_equal "plop doop derp", @linked_list2.to_string
  end

  def test_nodes_can_be_inserted
    @linked_list.insert(1, "derp")
    assert_equal "plop derp doop derp", @linked_list.to_string
  end

  def test_nodes_can_be_prepended
    @linked_list.prepend("derp")
    assert_equal "derp plop doop derp", @linked_list.to_string
  end

  def test_nodes_can_be_popped
    assert_equal "derp", @linked_list.pop.data
    assert_equal "doop", @linked_list.pop.data
    assert_equal "plop", @linked_list.pop.data
    assert_nil @linked_list.pop
  end

  def test_specific_nodes_can_be_found
    one = "plop"
    two = "plop doop"
    three = "doop derp"
    assert_equal one, @linked_list.find(0,1)
    assert_equal two, @linked_list.find(0,2)
    assert_equal three, @linked_list.find(1,2)
    assert_equal three, @linked_list.find(1,14)
    assert_equal "", @linked_list.find(0,0)
    assert_equal "", @linked_list.find(14,1)
    assert_equal "", @linked_list2.find(0,3)
  end

  def test_nodes_can_be_searched_for
    assert_equal false, @linked_list2.include?("doop")
    assert_equal true, @linked_list.include?("doop")
    assert_equal false, @linked_list.include?("mmmbop")
  end
end
