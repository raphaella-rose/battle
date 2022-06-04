feature 'hit points' do
  scenario 'see player 2s hit points' do
    sign_in_and_play()
    expect(page).to have_content 'Daniel: 60'
  end

  scenario 'see player 1s hit points' do
    sign_in_and_play()
    expect(page).to have_content 'Raphaella: 60'
  end
end