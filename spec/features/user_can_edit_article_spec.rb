feature 'User can' do
    context 'edit an article' do
        before do
            create(:article, title: 'Hello errady', content: 'Play pookers')
            visit root_path
            click_on 'Edit'
        end

        it 'User can view the article that user wants to edit' do
            expect(page).to have_content 'Play pookers'
        end

        it 'User can edit the content' do
            fill_in 'Content', with: 'Best citys for purties'
            click_on 'Update Article'
            expect(page).to have_content 'Best citys for purties'
        end

        it 'User can edit title' do
            fill_in 'Title', with: 'Vegas Baby'
            click_on 'Update Article'
            expect(page).to have_content 'Vegas Baby'
        end
    end
end
