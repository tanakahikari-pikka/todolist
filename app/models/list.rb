class List < ApplicationRecord
  belongs_to :category
  validates :name, presence: true ,length: {minimum:1,maximum: 50}
end
