class Knife < ApplicationRecord
  has_many_attached :images, dependent: :destroy
  validates_presence_of :blade
  # validates_presence_of :handle

  enum :process, {
    forging: 0,
    normalize: 1,
    thermals: 2,
    annealing: 3,
    rough_grind: 4,
    hardening: 5, 
    tempering: 6,
    final_grind: 7,
    etching: 8,
    finished: 9
  }
end
