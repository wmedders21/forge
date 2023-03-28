require 'rails_helper'

RSpec.describe 'The Knives Show Page' do
  before :each do
    @knife_1 = Knife.create!(
        customer_name: 'Bobby Joe',
        blade: 'steel',
        handle: 'wood',
        pins: 'brass',
        guard: 'nickel',
        finish: 'Tru-Oil',
        sheath: 'Leather'
    )
  end
  it 'displays the title' do
    visit "/knives/#{@knife_1.id}"
    # save_and_open_page
    expect(page).to have_content "Knife #{@knife_1.id}"
  end
end
