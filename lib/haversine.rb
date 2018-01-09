# Copyright (C) 2011, Jirapong Nanta
# http://bananacoding.com


require "haversine/version"

class Float
  RADIAN_PER_DEGREE = Math::PI / 180.0

  def toRad
    return self * RADIAN_PER_DEGREE
  end
end

class Integer
  RADIAN_PER_DEGREE = Math::PI / 180.0

  def toRad
    return self * RADIAN_PER_DEGREE
  end
end


module Haversine
  EARTH_RADIUS_MI = 3963.19
  EARTH_RADIUS_KM = 6371.00

  #  Calculate the great-circle distance between two points in kilometers (km.)
  #
  #  Example:
  #  >> Haversine.distance(51.885, 0.235, 49.008, 2.549)
  #  => 359.3823602146921
  #
  #  Arguments:
  #   lat_a: (Float)
  #   lng_a: (Float)
  #   lat_b: (Float)
  #   lng_b: (Float)
  def self.distance(lat_a, lng_a, lat_b, lng_b)
    return self.distance_in_radius(lat_a, lng_a, lat_b, lng_b) * EARTH_RADIUS_KM
  end

  #  Calculate the great-circle distance between two points in miles (mi.)
  #
  #  Example:
  #  >> Haversine.distance_in_mile(51.885, 0.235, 49.008, 2.549)
  #  => 223.5599711472713
  #
  #  Arguments:
  #   lat_a: (Float)
  #   lng_a: (Float)
  #   lat_b: (Float)
  #   lng_b: (Float)
  def self.distance_in_mile(lat_a, lng_a, lat_b, lng_b)
    return self.distance_in_radius(lat_a, lng_a, lat_b, lng_b) * EARTH_RADIUS_MI
  end

private

  def self.distance_in_radius(lat_a, lng_a, lat_b, lng_b)
    d_lat = (lat_a - lat_b).toRad;
    d_lng = (lng_a - lng_b).toRad;

    a = Math.sin(d_lat/2)**2 + Math.cos(lat_a.toRad) * Math.cos(lat_b.toRad) * Math.sin(d_lng/2) ** 2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

    return c
  end
end
