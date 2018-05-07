class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :board
  belongs_to :team, optional: true

  accepts_nested_attributes_for :team

  def score
    board ? board.score : 0
  end
end
