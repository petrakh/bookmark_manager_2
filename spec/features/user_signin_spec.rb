feature 'User sign in' do

  let!(:user) do
    User.create(email: 'user@example.com',
                password: 'secret1234',
                password_confirmation: 'secret1234')
  end

  scenario 'with correct credentials' do
    sign_in(email: user.email, password: user.password)
    expect(page).to have_content "Welcome, #{user.email}"
  end
end

feature 'Resetting Password' do

  scenario 'I can send a link to reset password' do
    visit '/sessions/new'
    click_link 'Forgotten password'
    expect(page).to have_content("Please enter your email address")
  end

  scenario 'when I enter my email I am told to check my inbox' do
    recover_password
    expect(page).to have_content "Thanks, Please check your inbox for the link"
  end

  scenario 'assigned a reset token to the user when they recover' do
    sign_up
    expect{recover_password}.to change{User.first.password_token}
  end
end
