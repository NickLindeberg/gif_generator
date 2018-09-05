require 'rails_helper'

describe 'user can create categories' do
  describe 'they visit /categories' do
    xit 'creates new category' do

      visit categories_path

      expect(page).to have_content(category_1.title)
      expect(page).to have_content(category_2.title)
    end
  end
end
