

feature 'submit bookmark via form' do
  scenario 'user add github bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'https://github.com')
    click_button('Submit')
    expect(page).to have_content 'https://github.com'
  end
end