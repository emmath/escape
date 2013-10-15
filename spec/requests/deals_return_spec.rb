require 'spec_helper'
require 'support/vcr_setup'
require 'vcr'

describe "Deals Search" do
  before do
    visit '/'
  end

  it "can return deals" do
    VCR.use_cassette('deals_return') do
      click_link 'Show me the deals!'
      page.should have_content(@price)
    end
  end
end
