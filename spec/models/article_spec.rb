require 'rails_helper'

RSpec.describe :article, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:article)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:article, title: nil)).not_to be_valid
  end
  it "is invalid without a body" do
    expect(FactoryGirl.build(:article, body: nil)).not_to be_valid
  end
  context "2 or more" do
    it "orders them in reverse chronologically" do
      article1 = FactoryGirl.create(:article)
      article2 = FactoryGirl.create(:article)
      expect(Article.all).to eq([article2, article1])
    end
  end
end
