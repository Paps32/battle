feature 'view hit points' do
  scenario 'our form can accept names and display them' do
    sign_in_and_play
    expect(page).to have_content 'Dracula: 100HP'
    end
end
