feature 'Adding tags' do

  scenario 'when adding a new tag' do
    visit '/links/new'
    fill_in 'url', with: 'http://zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    fill_in 'tags', with: '#inspiring'
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('#inspiring')
  end
end
