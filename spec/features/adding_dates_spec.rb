feature 'Adding dates' do
  scenario 'updates space details with available dates' do
    visit('/spaces/new')

    fill_in :start_date, with: "2021-01-14"
    fill_in :end_date, with: "2021-02-17"
    click_button('Submit')
    expect(page).to have_content "2021-01-14 and 2021-02-17"
  end
end