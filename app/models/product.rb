class Product < ApplicationRecord
  has_many :order_items

  has_attached_file :photo, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end
