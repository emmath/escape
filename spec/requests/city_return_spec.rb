require 'spec_helper'
require 'support/vcr_setup'
require 'vcr'

describe "City Hotel Search" do
  before do
    visit '/'
    click_link 'Search destination City!'
  end

  it "returns city hotels" do
    VCR.use_cassette('city_return') do
      fill_in "City", with: "seattle"
      click_button "Lets go!"
      page.should have_content(@city)
    end
  end

  it 'can not search trip without filling in city' do
    click_button 'Lets go!'
    page.should have_content("Whoops! You forgot the city!")
  end

end
