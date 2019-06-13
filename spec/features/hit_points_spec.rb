feature 'view hit points' do
  scenario 'our form can accept names and display them' do
    visit('/')
    fill_in :player_1, with: 'Papya'
    fill_in :player_2, with: 'Dracula'
    click_button 'Submit'
    expect(page).to have_content 'Papya: 100HP'
    end
end
