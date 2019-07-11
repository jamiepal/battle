# frozen_string_literal: true

feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'James HP: 60'
    expect(page).to have_content 'James HP: 50'
  end
end
