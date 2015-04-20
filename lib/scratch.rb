rows = 9
cols = 9


p (1..rows).to_a.zip((1..cols).to_a)



class Blah
  attr_accessor :a, :b

  def initialize(a,b)
    @a = a
    @b = b
  end

end

p foo = Blah.new(1,2)


p objects = "WWWWWWWWWW..PPP..WW.WWWWW.WW.......WX.WWP\
WW.WW.......WW.WWWWW.WW...T...WWWWWWWWWW".chars
