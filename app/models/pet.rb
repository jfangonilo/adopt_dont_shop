class Pet < ApplicationRecord
  validates_presence_of :image
  validates_presence_of :name
  validates_presence_of :approximate_age
  validates_presence_of :sex
  validates_presence_of :description
  validates_presence_of :adoptable

  belongs_to :shelter

  def shelter_name
    shelter.name
  end

  def adoptable?
    adoptable
  end
end
