require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    return no_bikes_error if @bikes.length == 0
      @bikes.pop
  end

  def dock_bike(bike)
    return docking_station_full if @bikes.length >= 20
      @bikes.push(bike)
  end

  def no_bikes_error
    raise 'No bikes'
  end

  def docking_station_full
    raise 'Docking station full'
  end

end
