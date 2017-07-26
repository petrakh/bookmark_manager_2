require 'web_helper'

feature 'User signup and registration' do

  scenario 'user can register' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(current_path).to eq '/links'
    expect(page).to have_content 'Welcome, barney@barney.com'
    expect(User.first.email).to eq('barney@barney.com')
  end

  scenario 'user can register' do
    expect { password_confirmation_fail }.not_to change(User, :count)
    expect(current_path).to eq '/links'    
    expect(page).not_to have_content 'Welcome, barney@barney.com'
  end
end
