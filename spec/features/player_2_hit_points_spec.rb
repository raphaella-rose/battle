feature 'player 2 hit points' do
  scenario 'see player 2s hit points' do
    sign_in_and_play()
    expect(page).to have_content 'Daniel: 100'
  end
end