class Alumnus < ApplicationRecord
  has_many :regs, dependent: :destroy
  has_many :events, :through=> :regs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Non-persistent attribute to allow creating a new user without a password
  # Password will be set by the user by following a link in the invitation email
  attr_accessor :allow_blank_password

  devise :validatable

  # Called by Devise to enable/disable password presence validation
  def password_required?
    allow_blank_password ? false : super
  end

  # Don't require a password when importing users
  def before_import_save(record)
    self.allow_blank_password = true
  end
end
