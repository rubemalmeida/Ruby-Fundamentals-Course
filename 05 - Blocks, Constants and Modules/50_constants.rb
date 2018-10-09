MAX_SPEED = 100
MAX_SPEED = 1000
# already initialized constant MAX_SPEED

TYPES = []
TYPES << "freighter"
TYPES.freeze
TYPES << "freighter"
# can't modify frozen Array
TYPES.frozen?
# true
TYPES[0].upcase!
# "FREIGHTER"

class A; MIN_SPEED = 0; end
A::MAX_SPEED = 100
A::MAX_SPEED
# 100
