class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet

  def already_liked?(tweet)
    self.likes.exists?(tweet_id: tweet.id)
  end

  has_many :comments, dependent: :destroy


  validates :name, presence: true 
  validates :profile, length: { maximum: 200 } 

  has_one_attached :image
  attr_accessor :remove_image

  #DM機能
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy

before_save :purge_image, if: -> { remove_image == '1' }

def purge_image
  image.purge
end
end
