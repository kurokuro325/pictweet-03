class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  enum status: { published: 0, draft: 1 }
  has_many :comments
end
