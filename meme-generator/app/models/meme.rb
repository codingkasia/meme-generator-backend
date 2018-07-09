class Meme < ApplicationRecord
  # belongs_to :user
  # has_many :comments

  def self.generate_meme(params)
    url = 'https://api.imgflip.com/caption_image'
    meme = RestClient.post(url, params)
    return JSON.parse(meme.body)
    
  end
end
