def sign_in_and_play()
  visit('/battle')
  fill_in :player_1_name, with: 'Raphaella'
  fill_in :player_2_name, with: 'Daniel'
  click_button 'submit'
end