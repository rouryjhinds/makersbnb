
feature 'user can visit bookings page' do
  scenario "visiting /bookings shows welcome message" do
    visit '/booking'
    expect(page).to have_content('Which night would you like to stay')
  end
end
feature 'selecting dates' do
  scenario "visiting /bookings and selecting your trip date" do
    visit '/booking'
    fill_in('date', with: '2021-01-30')
    click_button('See available spaces')
    #expect(page).to have_content('your request has been sent')
  end
end

feature 'user gets a booking confirmation page' do
  scenario "/confirmation displays message" do
    visit '/booking/confirmation'
    expect(page).to have_content('your request has been sent!')
  end
end

=begin
describe 'available dates' do
  let(:space) { double: space}

  it 'only shows available dates' do
    connection = PG.connect(dbname: 'makers_bnb_test')
      test_space = #
    #something here that queries and only shows available spaces

  end
end
=end