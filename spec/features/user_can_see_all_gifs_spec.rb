require 'rails_helper'

describe 'user sees all gifs' do
  describe 'they visit /' do
    it 'displays all gifs' do
      category_1 = Category.create(title: 'Sweet')
      category_2 = Category.create(title: 'Dude')
      gif_1 = category_1.gifs.create(image: 'https://gifer.com/i/MGKW.gif')
      gif_1 = category_2.gifs.create(image: 'https://media.giphy.com/media/v9OLgAL8p8FOM/source.gif')

      visit gifs_path
save_and_open_page
      expect(page).to have_content(category_1.title)
      expect(page).to have_content(category_1.title)
    end
  end
end
