feature 'User signup and registration' do

  scenario 'user can register' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(current_path).to eq '/links'
    expect(page).to have_content 'Welcome, barney@barney.com'
    expect(User.first.email).to eq('barney@barney.com')
  end

  scenario 'user cant register if confirmation password doesnt match' do
    expect { sign_up(password_confirmation: 'bad_password') }.not_to change(User, :count)
    expect(current_path).to eq '/users'
    expect(page).not_to have_content 'Welcome, barney@barney.com'
    expect(page).to have_content 'Password does not match the confirmation'
  end

  scenario 'I cant enter empty email' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email must not be blank')
  end

  scenario 'I cant sign up with an invalid email address' do
    expect { sign_up(email: 'barney@barney') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email has an invalid format')
  end

  scenario 'I cannot sign up with an already registered email address' do
    sign_up
    expect {sign_up}.not_to change(User, :count)
    expect(page).to have_content('Email is already taken')
  end
end
