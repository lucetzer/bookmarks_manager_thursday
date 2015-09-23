feature 'Creating links' do

  scenario 'I can create a new link' do
    visit 'new_link'
    fill_in 'url', with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Add Link'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end

    scenario 'there are no links in the database at the start of the test' do
      expect(link.coount).to eq 0
    end

end