feature 'attacking' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play()
    click_link 'attack'
    expect(page).to have_content 'Raphaella attacked Daniel'
  end
end