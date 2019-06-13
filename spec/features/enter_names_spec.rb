

feature 'players can enter their names' do
  scenario 'our form can accept names and display them' do
    sign_in_and_play
    expect(page).to have_content 'Papya vs Dracula'
    end
end
