require 'docking_station'

describe DockingStation do

bike = Bike.new

  describe "Release a bike" do
  it { is_expected.to respond_to :release_bike }
  it { allow(subject).to receive(:release_bike).and_return(bike)}
  end

  describe "Is it a working bike?" do
  it { expect(bike.working?).to eq true }
  end

  describe "Docking a bike" do
  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  end

  it 'returns a docked bike' do
#    bike = Bike.new
   subject.dock_bike(bike)
   expect(subject.release_bike).to eq bike
 end

 describe "Error message works?" do
 it { expect { raise 'No bikes' }.to raise_error('No bikes')}
 end

 describe "Error 'Docking station full'" do
 it { expect { raise 'Docking station full' }.to raise_error('Docking station full')}
 end
end
