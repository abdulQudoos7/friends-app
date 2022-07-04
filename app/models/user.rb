class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable


  # associations
  has_many :friends

  # pagination
  paginates_per 5

  # enum
  enum role: [:user, :admin]


  # PgSearch
  

end
