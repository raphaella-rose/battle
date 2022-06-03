feature 'attacking' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play()
    click_link 'attack'
    expect(page).to have_content 'Raphaella attacked Daniel'
  end
  
  scenario 'reduce player 2 HP by 20' do
    sign_in_and_play()
    click_link 'attack'
    click_button 'Next Round'
    expect(page).to have_content 'Daniel has 80 points'
  end
end