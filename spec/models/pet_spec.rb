require 'rails_helper'

describe Pet, type: :model do
  before :each do
    @shelter_1 = Shelter.create(
      name:     "House of Seamus",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )
    @pet_1 = Pet.create(
      image:            "string",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "M",
      shelter_id:       @shelter_1.id
    )
  end

  describe "validations" do
    it {should validate_presence_of :name}
  end

  describe "relationships" do
    it {should belong_to :shelter}
  end

  describe "method" do
    it ".shelter_name" do
      expect(@pet_1.shelter_name).to eq("House of Seamus")
    end
  end
end
