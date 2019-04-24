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
    @jungle_beat.append("")
    assert_equal 7, @jungle_beat.list.count
  end

  def test_jungle_beat_can_be_counted
    @jungle_beat.list.append("mmmbop")
    @jungle_beat.list.append("ba")
    @jungle_beat.list.append("duba")
    assert_equal 3, @jungle_beat.count
  end

  def test_jungle_beat_can_be_played
    ditty = "mmmbop, ba duba dop ba, do bop"
    @jungle_beat.append("mmmbop, ba duba dop ba, do bop")
    assert_equal ditty, @jungle_beat.play
  end

  def test_rate_can_be_changed
    ditty = "mmmbop, ba duba dop ba, do bop"
    @jungle_beat.append("mmmbop, ba duba dop ba, do bop")
    @jungle_beat.rate = 500
    assert_equal ditty, @jungle_beat.play
  end
end
