# frozen_string_literal: true

feature 'Testing HP' do
  context 'Sumbitted Input Names:' do
    before do
      sign_in_and_play
    end
    scenario "Can see player 1's HP" do
      expect(page).to have_content 'Toby HP: 60'
    end
    scenario "Can see player 2's HP" do
      expect(page).to have_content 'James HP: 60'
    end
    scenario 'Can attack player 2' do
      click_button 'Attack'
      expect(page).to have_content 'Toby attacked James'
    end
  end
end
