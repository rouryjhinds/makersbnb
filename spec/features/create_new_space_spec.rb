
feature 'list a new space' do
  scenario 'user can list a new space and add details' do
    visit('/space/new')
    fill_in('name', with: 'bungaloo')
    fill_in('description', with: 'cozy')
    fill_in('price', with: 100)
    click_button('Add')

    expect(page).to have_content 'your spaces'
    expect(page).to have_content('bungaloo')
    expect(page).to have_content('cozy')
    expect(page).to have_content('100')
  end
end
