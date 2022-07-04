class Friend < ApplicationRecord

  # associations
  belongs_to :user
  has_many :comments, dependent: :destroy

  # validations
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :phone, :presence => true, :uniqueness => true,
                    length: { minimum: 11 }
  validates :address, :presence => true

  # customsearch
  # def self.search_by(search_term)
  #     where "LOWER(first_name) LIKE :search_term OR LOWER(last_name) LIKE :search_term ", search_term: "%#{search_term.downcase}"
  # end

  # pagination
  paginates_per 5

  # pg_search
  include PgSearch::Model
  pg_search_scope :search, against: [:first_name, :last_name], using: { tsearch: { any_word: true } }
end
