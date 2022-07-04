class Comment < ApplicationRecord
  has_rich_text :body

  belongs_to :friend

  validates :body, presence: :ture
  validates :commenter, presence: :true

end
