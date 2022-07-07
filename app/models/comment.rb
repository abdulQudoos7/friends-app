class Comment < ApplicationRecord
  # friendly_id
  extend FriendlyId
  friendly_id :id, use: :slugged

  has_rich_text :body

  belongs_to :friend

  validates :body, presence: :ture
  validates :commenter, presence: :true

end
