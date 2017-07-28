module SessionHelpers

  def sign_in(email:, password:)
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Sign in'
  end

  def sign_up(email: 'barney@barney.com',
              password: '12345678',
              password_confirmation: '12345678')
    visit '/users/new'
    fill_in :email,    with: email
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button 'Register'
  end

  def password_confirmation_fail
    visit '/users/new'
    expect(page.status_code).to eq(200)
    fill_in :email,    with: 'barney@barney.com'
    fill_in :password, with: 'password1234'
    fill_in :password_confirmation, with: 'password4321'
    click_button 'Register'
  end

  def email_nil
    visit '/users/new'
    fill_in :password, with: 'password1234'
    fill_in :password_confirmation, with: 'password1234'
    click_button 'Register'
  end

  def invalid_email_format
    visit '/users/new'
    fill_in :email, with: 'invalid@email'
    fill_in :password, with: 'password1234'
    fill_in :password_confirmation, with: 'password1234'
    click_button 'Register'
end
end
