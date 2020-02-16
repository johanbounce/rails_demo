require 'rails_helper'

feature 'User can create articles' do
  before do
    visit root_path
    click_on "New article"
  end

  context "Successfully create an article [Happy Path]" do
    before do
      create(:article, title: 'Hey errady', content: 'Play pookers')
      fill_in "Title", with: "Hi, I am Johan!"
      fill_in "Content", with: "This is my life"
      click_on "Save Article"
    end
  
    it 'User should be on article show page' do
      article = Article.find_by(title: "Hi, I am Johan!")
      expect(current_path).to eq article_path(article)
    end
  end  

  it 'User should see success message' do
    expect(page).to have_content "Article was successfully created."
  end

  it 'User should see article title' do
    expect(page).to have_content "Hi, I am Johan!" 
  end

  it 'User should see article content' do
    expect(page).to have_content "This is my life" 
  end
end
