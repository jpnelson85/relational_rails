require 'rails_helper'

RSpec.describe 'race show page' do
  describe 'displays all attributes of a particular race' do
    it 'display attribute of race' do
      race = Race.create(race_name: "Indy 500", laps: 200, single_largest_sporting_event_in_world: true)
      visit "/races/#{race.id}"
      expect(page).to have_content(race.race_name)
      expect(page).to have_content(race.laps)
      expect(page).to have_content(race.single_largest_sporting_event_in_world)
    end
  end
end

