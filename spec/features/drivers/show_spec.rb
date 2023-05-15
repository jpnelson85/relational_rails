require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the driver name' do
    race = Race.create(race_name: "Indy 500", laps: 200, single_largest_sporting_event_in_world: true)
    driver = race.drivers.create(driver_name: "Jeff Nelson", won_indy: true, championships: 2)
    driver2 = race.drivers.create(driver_name: "Tony Kanaan", won_indy: true, championships: 0)
    visit "/drivers/#{driver.id}"
    expect(page).to have_content(driver.driver_name)
    expect(page).to_not have_content(driver2.driver_name)
  end

end