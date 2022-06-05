feature 'attacking' do
  scenario 'attacks opponent based on current turn' do
    sign_in_and_play()
    click_link 'attack'
    click_button 'Next Round'
    click_link 'attack'
    expect(page).to have_content "Daniel attacked Raphaella"
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play()
    click_link 'attack'
    click_button 'Next Round'
    click_link 'attack'
    click_button 'Next Round'
    expect(page).to have_content 'Daniel: 50HP'
  end

end