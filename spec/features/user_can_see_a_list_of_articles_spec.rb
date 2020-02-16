require 'rails_helper'

feature 'List articles on index page' do 
    context 'with articles in db' do
        before do 
            create(:article, title: 'A breaking news item')
            create(:article, title: 'Some really breaking action')
            
            visit root_path
        end 

        it 'displays first article title' do
            expect(page).to have_content 'A breaking news item'
        end

        it 'displays second article title' do
            expect(page).to have_content 'Some really breaking action'
        end

        it 'show an edit button' do
            expect(page).to have_content 'Edit'
        end
    end
end 