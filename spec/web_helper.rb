def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'barney@barney.com'
  fill_in :password, with: 'password1234'
  click_button 'Register'
end