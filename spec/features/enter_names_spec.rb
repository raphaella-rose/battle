feature 'enter names' do
  scenario 'submitting names' do
    sign_in_and_play()
    expect(page).to have_content 'Raphaella vs. Daniel'
  end


end