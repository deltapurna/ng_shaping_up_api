class Product < ActiveRecord::Base
  has_many :images
  has_many :reviews

  accepts_nested_attributes_for :images, :reviews

  validates :name, :price, presence: true

  def as_json(options={})
    super(only: [:name, :price, :description], 
          include: [
            {images:{only: [:full, :thumb]}},
            {reviews:{only: [:stars, :body, :author]}}])
  end
end
