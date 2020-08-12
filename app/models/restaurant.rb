class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :phone_number, presence: true




  # def category
  #   categories = ["chinese", "italian", "japanese", "french", "belgian"]
  #   categories.each do |category|
  #     unless category == :categroy
  #       puts "Invalid input"
  #     end
  #   end
  # end
end


