require 'rails_helper'

RSpec.describe 'The Knives Index Page' do
  before :each do
    @knife_1 = Knife.create(blade: 'steel', handle: 'wood')
    @knife_2 = Knife.create(blade: 'metal', handle: 'oak')
    @knife_3 = Knife.create(blade: 'damascus', handle: 'wire')
    @knife_4 = Knife.create(blade: 'bronze', handle: 'ivory')
    @knife_5 = Knife.create(blade: 'stainless', handle: 'micarta')
  end
  it 'displays the title' do
    visit '/knives'
    # save_and_open_page
    expect(page).to have_content 'All Knives'
  end
end
