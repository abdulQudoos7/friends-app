class Comment < ApplicationRecord
  belongs_to :friend

  validates :body, presence: :ture
  validates :commenter, presence: :true

end
