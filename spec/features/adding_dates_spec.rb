feature 'Adding dates' do
  scenario 'user clicks add unavailable dates to view dates form' do
    Space.create(name: "bungaloo", description: "cozy", price: 100)
    
    visit('/space')

    click_button('Add unavailable dates')

    expect(page).to have_field("start_date")
    expect(page).to have_field("end_date")

  end

  # scenario 'updates space details with available dates' do

  #   visit('/space/:id/availability?spaces_id=:id')

  #   fill_in :start_date, with: "2021-01-14"
  #   fill_in :end_date, with: "2021-02-17"
  #   click_button('Submit')
  #   expect(page).to have_content "2021-01-14 and 2021-02-17"

  # end
end