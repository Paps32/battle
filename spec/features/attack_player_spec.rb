feature 'player attacks' do
  scenario 'player 1 attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Papya attacked Dracula'
  end
end
