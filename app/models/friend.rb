class Friend < ApplicationRecord
    
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :email, :presence => true, :uniqueness => true
    validates :phone, :presence => true, :uniqueness => true,
            length: { minimum: 11 }
    validates :address, :presence => true

    def self.search_by(search_term)
        where "LOWER(first_name) LIKE :search_term OR LOWER(last_name) LIKE :search_term ", search_term: "%#{search_term.downcase}"
    end

    paginates_per 5

end
