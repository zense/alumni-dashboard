class Alumnus < ApplicationRecord
  has_many :regs, dependent: :destroy
  has_many :events, :through=> :regs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
