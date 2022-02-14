# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk'
    fill_in 'Price', with: 10
    select '2022', :from => 'book_published_date_1i'
    select 'February', :from => 'book_published_date_2i'
    select '3', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk'
    fill_in 'Price', with: 10
    select '2022', :from => 'book_published_date_1i'
    select 'February', :from => 'book_published_date_2i'
    select '3', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk')
  end
end

RSpec.describe 'Creating a book with price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk'
    fill_in 'Price', with: 10
    select '2022', :from => 'book_published_date_1i'
    select 'February', :from => 'book_published_date_2i'
    select '3', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10)
  end
end

RSpec.describe 'Creating a book with date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk'
    fill_in 'Price', with: 10
    select '2022', :from => 'book_published_date_1i'
    select 'February', :from => 'book_published_date_2i'
    select '3', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2022-02-03')
  end
end