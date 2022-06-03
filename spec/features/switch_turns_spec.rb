feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play()
      expect(page).to have_content "Raphaella's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play()
      click_link 'attack'
      click_link 'Next Round'
      expect(page).to have_content "Daniel's turn"
    end
  end
end