require 'rails_helper'

RSpec.describe 'races index page' do
  describe 'displays attributes of race' do
    it 'Then I see the name of each parent record in the system' do
      race = Race.create(race_name: "Indy 500", laps: 200, single_largest_sporting_event_in_world: true)
      visit "/races"
      expect(page).to have_content(race.race_name)
    end
  end
end

