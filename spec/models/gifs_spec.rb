require 'rails_helper'

describe Gif, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:image)}
  end

  describe 'relationships' do
    it {should belong_to(:category)}
  end
end
