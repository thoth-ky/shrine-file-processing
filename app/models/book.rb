class Book < ApplicationRecord
  include Uploaders::ImageUploader[:image]

  validates :title, presence: true 
end
