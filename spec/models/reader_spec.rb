require 'rails_helper'

RSpec.describe Reader, type: :model do
  it "is valid with name and email" do
    expect(FactoryBot.build(:reader)).to be_valid
  end
  it " is invalid without name" do
    reader = FactoryBot.build(:reader, name: nil)
    reader.valid?
    expect(reader.errors[:name]).to include("can't be blank")
  end
  it " is invalid without email" do
    reader = FactoryBot.build(:reader, email: nil)
    reader.valid?
    expect(reader.errors[:email]).to include("can't be blank")
  end
end
