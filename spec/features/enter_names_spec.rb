feature 'enter names' do
  scenario 'submitting names' do
    visit('/battle')
    fill_in :player_1_name, with: 'Raphaella'
    fill_in :player_2_name, with: 'Daniel'
    click_button 'submit'
    expect(page).to have_content 'Raphaella vs. Daniel'
  end


end