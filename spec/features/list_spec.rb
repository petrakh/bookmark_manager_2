feature 'displays a list of links' do

  scenario 'list of links displayed on homepage' do
    Link.destroy
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200
    puts page.text
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
