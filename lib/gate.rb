class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]


  def initialize(name)
    @name = name
  end


  def enter(ticket)
    ticket.stamp(@name)
  end


  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end


  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = (to - from).abs
    FARES[distance - 1]
  end
end




class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end


  def stamp(name)
    @stamped_at = name
  end
end


umeda = Gate.new(:umeda)
mikuni = Gate.new(:mikuni)

ticket = Ticket.new(160)
p umeda.enter(ticket)
p mikuni.exit(ticket)