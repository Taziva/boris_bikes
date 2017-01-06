require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    return no_bikes_error if @bike == nil
      @bike
  end

  def dock_bike(bike)
    return docking_station_full unless @bike.nil?
      @bike = bike
  end

  def bike

  end

  def no_bikes_error
    raise 'No bikes'
  end

  def docking_station_full
    raise 'Docking station full'
  end

end
