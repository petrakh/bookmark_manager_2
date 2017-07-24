feature 'add addres and title' do

  scenario 'add site address and title to manager' do
    visit '/links/new'
    fill_in 'address', with: 'http://makersacademy.co.uk'
    fill_in 'title', with: 'Makers Academy'
    click_button 'Submit'
    expect(page).to have_content('Makers Academy')
  end
end
