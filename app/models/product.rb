class Product < ApplicationRecord
  paginates_per 4
  before_destroy :not_referenced_by_any_lineitem
  mount_uploader :image, ImageUploader
  has_many :comments
  belongs_to :user
  has_many :lineitems
  validates :product_name, presence: true
  validates :image, presence: true
  validates :product_details, presence: true
  validates :product_price, presence: true
  validates :product_category, presence: true
  private
  def not_refereced_by_any_lineitem
    unless lineitems.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
  def self.search(search)
    if term
      where('product_name LIKE ? or product_category', "%#{search}%")
    else
      order('id desc')
    end
  end
  def self.order_list(sort_order)
    if sort_order == "product_name"
      order(name: :desc)
    else
      order(created_at: :desc)
    end
  end
end
