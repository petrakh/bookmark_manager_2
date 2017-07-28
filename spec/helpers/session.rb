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

  def recover_password
    visit '/users/recover'
    fill_in :email, with: "barney@barney.com"
    click_button "Submit"
  end
end
