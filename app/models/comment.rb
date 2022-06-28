class Comment < ApplicationRecord
  belongs_to :friend

  validates :body, presence: :ture

end
