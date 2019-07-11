# frozen_string_literal: true

feature 'Features Tests:' do
  context 'Sumbitted Input Names:' do
    before do
      sign_in_and_play
    end
    scenario 'Can enter and see name 1' do
      expect(page).to have_text 'Toby'
    end
    scenario 'Can enter and see name 2' do
      expect(page).to have_content 'James'
    end
  end
end
