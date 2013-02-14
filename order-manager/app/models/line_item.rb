class LineItem < ActiveRecord::Base
  attr_accessible :quantity

  belongs_to :order, :inverse_of => :line_items
  has_one :product

  validates :quantity, :presence => true, :if => Proc.new { |item| item.quantity > 0 }
end