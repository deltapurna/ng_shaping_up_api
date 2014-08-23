class Product < ActiveRecord::Base
  has_many :images
  has_many :reviews

  def as_json(options={})
    super(only: [:name, :price, :description], 
          include: [
            {images:{only: [:full, :thumb]}},
            {reviews:{only: [:stars, :body, :author]}}])
  end
end
