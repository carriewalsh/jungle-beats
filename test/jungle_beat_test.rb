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
end
