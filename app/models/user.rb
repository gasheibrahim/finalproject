class User < ApplicationRecord
  has_secure_password
  has_secure_password
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :products, dependent: :destroy
  validates :fullname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phonenumber, presence: true
  validates :password_digest, presence: true
  def follow!(other_user)
  	active_relationships.create!(followed_id: other_user.id)
  end
	#Check whether you are following
  def following?(other_user)
	 active_relationships.find_by(followed_id: other_user.id)
  end
  def unfollow!(other_user)
	active_relationships.find_by(followed_id: other_user.id).destroy
  end
end
