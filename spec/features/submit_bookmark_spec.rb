

feature 'submit bookmark via form' do
  scenario 'user add github bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'https://www.github.com')
    fill_in('title', with: "Github")
    click_button('Submit')
    expect(page).to have_content 'Github'
  end
end