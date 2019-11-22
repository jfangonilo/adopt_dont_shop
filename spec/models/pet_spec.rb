require 'rails_helper'

describe Pet, type: :model do
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
  end

  describe "validations" do
    it {should validate_presence_of :image}
    it {should validate_presence_of :name}
    it {should validate_presence_of :approximate_age}
    it {should validate_presence_of :sex}
    it {should validate_presence_of :description}
  end

  describe "relationships" do
    it {should belong_to :shelter}
  end

  describe "method" do
    it ".shelter_name" do
      expect(@pet_1.shelter_name).to eq "House of Seamus"
    end

    it ".adoptable?" do
      expect(@pet_1.adoptable?).to eq true
    end
  end
end
