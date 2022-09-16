# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'title' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'me'
        fill_in 'Price', with: '6'
        select 'September', from: 'book_published_date_2i' 
        select '2022', from: 'book_published_date_1i' 
        select '11', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end

    scenario 'author' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'me'
        fill_in 'Price', with: '6'
        select 'September', from: 'book_published_date_2i' 
        select '2022', from: 'book_published_date_1i' 
        select '11', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('me')
    end

    scenario 'price' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'me'
        fill_in 'Price', with: '6'
        select 'September', from: 'book_published_date_2i' 
        select '2022', from: 'book_published_date_1i' 
        select '11', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('6')
    end

    scenario 'published_date' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'me'
        fill_in 'Price', with: '6'
        select 'September', from: 'book_published_date_2i' 
        select '2022', from: 'book_published_date_1i' 
        select '11', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content("2022-09-11")
    end
end    