Haversine is a formula to calculate the great-circle distance between two points
================================================================================

Haversine is Ruby library for haversine a formula to calculate distance between
two GEO Location. Because Earth is not flat!

References
-------------------------------------------------------
Inspired by Landon Cox at http://www.esawdust.com/blog/gps/files/HaversineFormulaInRuby.html
And http://www.movable-type.co.uk/scripts/latlong.html

You can totally install it as a Gem
-----------------------------------

Haversine is readily available as a Ruby gem.

  $ [sudo] gem install haversine

The Haversine source is available at GitHub:

  $ git clone git://github.com/jirapong/haversine.git

Feedback & Patch are welcome.

And how to use
------------------------------------
  require 'haversine'

  lat_a = 51.885
  lng_a = 0.235

  lat_b = 49.008
  lng_b = 2.549

  km = Haversine.distance(lat_a, lng_a, lat_b, lng_b);

Credits
-------------------------------------------------------
This library is written by Jirapong Nanta (@jirapong)

Boring legal stuff
------------------

Copyright (c) 2011, Jirapong Nanta

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

