class Pet < ApplicationRecord
  validates_presence_of :image
  validates_presence_of :name
  validates_presence_of :approximate_age
  validates_presence_of :sex

  belongs_to :shelter

  def shelter_name
    shelter.name
  end

  def adoptable?
    true
  end
end
