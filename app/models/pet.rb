class Pet < ApplicationRecord
  validates_presence_of :name

  belongs_to :shelter

  def shelter_name
    shelter.name
  end
end
