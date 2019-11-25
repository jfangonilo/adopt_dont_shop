require 'rails_helper'

describe Shelter, type: :model do
  before :each do
    @shelter_1 = Shelter.create!(
      name:     "House of Seamus",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )

    @pet_1 = @shelter_1.pets.create!(
      image:            "string",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "M",
      description:      "Winter is Coming, dog"
    )
    @pet_2 = @shelter_1.pets.create(
      image:            "https://www.catster.com/wp-content/uploads/2018/03/Calico-cat.jpg",
      name:             "Miso",
      approximate_age:  2,
      sex:              "female",
      description:      "Winter is Coming; cat"
    )
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :address}
    it {should validate_presence_of :city}
    it {should validate_presence_of :state}
    it {should validate_presence_of :zip}
  end

  describe "relationships" do
    it {should have_many :pets}
  end

  describe "method" do
    it ".pet_count" do
      expect(@shelter_1.pet_count).to eq 2
    end
  end
end
