require "test/unit"
require "haversine"
# testing against with http://www.movable-type.co.uk/scripts/latlong.html

class HaversineTest < Test::Unit::TestCase

  def test_distance_in_km
    lat_a = 51.885
    lng_a = 0.235

    lat_b = 49.008
    lng_b = 2.549

    km = Haversine.distance(lat_a, lng_a, lat_b, lng_b)
    assert_equal(359.3823602146921, km)
  end

  def test_distance_in_mi
    lat_a = 51.885
    lng_a = 0.235

    lat_b = 49.008
    lng_b = 2.549

    mi = Haversine.distance_in_mile(lat_a, lng_a, lat_b, lng_b)
    assert_equal(223.5599711472713, mi)
  end

  def test_distance_float_in_km
    lat_a = 51.0
    lng_a = 0.235

    lat_b = 49
    lng_b = 2.549

    km = Haversine.distance(lat_a, lng_a, lat_b, lng_b)
    assert_equal(277.11934670861064, km)
  end

  def test_distance_float_in_mi
    lat_a = 51.0
    lng_a = 0.235

    lat_b = 49.0
    lng_b = 2.549

    mi = Haversine.distance_in_mile(lat_a, lng_a, lat_b, lng_b)
    assert_equal(172.38685036604906, mi)
  end

  def test_distance_integer_in_km
    lat_a = 51
    lng_a = 0.235

    lat_b = 49
    lng_b = 2.549

    km = Haversine.distance(lat_a, lng_a, lat_b, lng_b)
    assert_equal(277.11934670861064, km)
  end

  def test_distance_integer_in_mi
    lat_a = 51
    lng_a = 0.235

    lat_b = 49
    lng_b = 2.549

    mi = Haversine.distance_in_mile(lat_a, lng_a, lat_b, lng_b)
    assert_equal(172.38685036604906, mi)
  end

end
