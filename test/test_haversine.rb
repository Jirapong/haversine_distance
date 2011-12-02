require "test/unit"
require "haversine"

class HaversineTest < Test::Unit::TestCase

  def test_distance_in_km
    lat_a = -104.88544
    lng_a = 39.06546

    lat_b = -104.80
    lng_b = 39.06546

    km = Haversine.distance(lat_a, lng_a, lat_b, lng_b);
    assert_equal(100, km);
  end

end
