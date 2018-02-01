class Event < ApplicationRecord
  mount_uploader :Eventpic, EventpicUploader
  has_many :regs, dependent: :destroy
  has_many :alumni, :through=> :regs
end
