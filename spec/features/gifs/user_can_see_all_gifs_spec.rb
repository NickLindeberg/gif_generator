require 'rails_helper'

describe 'user sees all gifs' do
  describe 'they visit /' do
    it 'displays all gifs' do
      gif_1 = Gif.create(image: 'https://media.giphy.com/media/v9OLgAL8p8FOM/source.gif')
      gif_2 = Gif.create(image: 'http://i.imgur.com/bcOA0zO.gif')

      visit gifs_path
save_and_open_page
      expect(page).to have_css("img[src*='#{gif_1.image}']")
      expect(page).to have_css("img[src*='#{git_2.image}']")
    end
  end
end
