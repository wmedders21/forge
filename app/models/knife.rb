class Knife < ApplicationRecord
  has_many_attached :images, dependent: :destroy
  validates_presence_of :customer_name
  validates_presence_of :blade
  validates_presence_of :handle
  validates_presence_of :pins
  validates_presence_of :guard
  validates_presence_of :finish
  validates_presence_of :process
  validates_presence_of :sheath
end
