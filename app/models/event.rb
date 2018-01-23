class Event < ApplicationRecord
  has_many :regs, dependent: :destroy
  has_many :alumni, :through=> :regs
end
