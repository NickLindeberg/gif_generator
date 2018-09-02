require 'rails_helper'

describe 'user sees all categories' do
  describe 'they visit /categories' do
    it 'displays all categories' do
      category_1, category_2 = create_list(:category, 2)

      visit categories_path

      expect(page).to have_content(category_1.title)
      expect(page).to have_content(category_2.title)
    end
  end
end
