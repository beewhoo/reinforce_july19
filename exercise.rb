class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end


class Trip

  def initialize
    @stops = []
  end


  def add(location)
    @stops << location.name
  end

  def travel_log
    p 'Began Trip.'
    @stops.each_cons(2) do |stop|
      p "Traveled from #{stop[0]} to #{stop[1]}"
    end
    p 'Ended Trip.'
  end


end


toronto = Location.new('toronto')
montreal = Location.new('montreal')
ottawa = Location.new('ottawa')
newyork = Location.new('newyork')
boston = Location.new('boston')


p toronto

trip1 = Trip.new

trip1.add(toronto)
trip1.add(montreal)
trip1.add(ottawa)
trip1.add(newyork)
trip1.add(boston)
p trip1

trip1.travel_log
