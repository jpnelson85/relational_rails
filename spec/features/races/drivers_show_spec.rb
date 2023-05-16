require 'rails_helper'

RSpec.describe 'drivers_show action' do
  it 'displays the race with the drivers attributes' do
    race = Race.create(race_name: "Indy 500", laps: 200, single_largest_sporting_event_in_world: true)
    driver = race.Drivers.create(driver_name: "Jeff Nelson", won_indy: true, championships: 2)
    driver2 = race.Drivers.create(driver_name: "Tony Kanaan", won_indy: true, championships: 0)
    
    visit "/races/#{race.id}/drivers_show"
    expect(page).to have_content(driver.driver_name)
    expect(page).to have_content(driver.won_indy)
    expect(page).to have_content(driver.championships)
    expect(page).to have_content(driver2.driver_name)
    expect(page).to have_content(driver2.won_indy)
    expect(page).to have_content(driver2.championships)
  end
end