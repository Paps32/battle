describe 'switch turns' do
  context 'seeing the current turn' do
    scenario 'start of game' do
      sign_in_and_play
      expect(page).to have_content "Papya's turn"
  end
end


  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Papya's turn"
    expect(page).to have_content "Dracula's turn"
  end
end
