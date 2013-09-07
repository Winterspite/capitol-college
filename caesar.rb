#!/usr/bin/env ruby
# Written by Joe for IAE673 Assignment 1
# Takes an input string and generates the ROT1-25 caesar shifts
#
def rot(str, degree)
  str = str.unpack('C' * str.length).map!{ |e|
    if e >= 97 && e <= 122
      e = ((e - 97 + degree) % 26) + 97
    elsif e >= 65 && e <= 90
      e = ((e - 65 + degree) % 26) + 65
    else
      e = e
    end
  }.pack('C' * str.length)

  str
end

input = gets.chomp

shift = 0
while( shift < 26 )
  str = rot(input,shift)
  print "ROT[#{shift}]: #{str}\n"
  shift += 1
end


