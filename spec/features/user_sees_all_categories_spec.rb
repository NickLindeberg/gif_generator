require 'rails_helper'

describe 'user sees all categories' do
  describe 'they visit /categories' do
    it 'displays all articles' do
      category_1 = Category.create(title: 'Sweet')
      category_2 = Category.create(title: 'Dude')

      visit categories_path

      expect(page).to have_content(category_1.title)
      expect(page).to have_content(category_2.title)
    end
  end
end
