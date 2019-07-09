feature 'features tests' do
  scenario 'Can enter and see name 1' do
    visit('/')
    fill_in 'name1', with: 'Toby'
    click_button 'Submit'
    expect(page).to have_text 'Toby'
  end
  scenario 'Can enter and see name 2' do
    visit('/')
    fill_in 'name2', with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'James'
  end
end
