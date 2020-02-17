feature 'User can' do
    context 'edit an article' do
        before do
            create(:article, title: 'Hello errady', content: 'Play pookers')
            visit root_path
        end
    end 

    it 'User can see the article she wants to delete' do
        expect(page).to have_content 'Hello errady'
    end

    it 'User can delete an article' do
        click_on 'Delete'
        expect(page).to_not have_content 'Tell me what you want'
    end

    it 'Article is deleted' do
        click_on 'Delete'
        expect(article.count).to eq 0
    end

end           