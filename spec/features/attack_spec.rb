feature 'Attacking' do
    scenario 'reduces opponents hp by 10' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content 'Dracula: 100HP'
      expect(page).to have_content 'Dracula: 90HP'
    end
end
