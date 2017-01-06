require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    return no_bikes_error if empty?
      @bikes.pop
  end

  def dock_bike(bike)
    return docking_station_full if full?
      @bikes.push(bike)
  end

  def no_bikes_error
    raise 'No bikes'
  end

  def docking_station_full
    raise 'Docking station full'
  end

  private

    def full?
      @bikes.length >= 20
    end

    def empty?
      @bikes.empty?
    end

end
