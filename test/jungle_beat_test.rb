require "./test/test_helper"

class JungleBeatTest < Minitest::Test
  def setup
    @jungle_beat = JungleBeat.new
  end

  def test_jungle_beat_exists
    assert_instance_of JungleBeat, @jungle_beat
  end

  def test_jungle_beat_starts_with_empty_list
    assert @jungle_beat.list
    assert_nil @jungle_beat.list.head
  end

  def test_jungle_beats_can_have_nodes_added
    @jungle_beat.append("mmmbop ba duba dop ba do")
    assert_equal "mmmbop", @jungle_beat.list.head.data
    @jungle_beat.append("bop")
    assert_equal 7, @jungle_beat.list.count
  end

  def test_jungle_beat_can_be_counted
    assert_equal 7, @jungle_beat.count
  end
end