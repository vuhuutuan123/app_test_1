class Test < ApplicationRecord
  belongs_to :category
  has_many :user_tests
  has_many :users, through: :user_tests

  enum status: {draff: 0, public: 1}
end
