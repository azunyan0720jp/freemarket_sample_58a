require 'rails_helper'

describe Product do
  describe '#create' do
    it "nameが空では登録不可" do
      product = build(:product, name: "")
      product.valid?
      expect(product.errors[:name]).to include("can't be blank")
    end

    it "detailが空では登録不可" do
      product = build(:product, detail: "")
      product.valid?
      expect(product.errors[:detail]).to include("can't be blank")
    end

    it "categoryが空では登録不可" do
      product = build(:product, category: "")
      product.valid?
      expect(product.errors[:category]).to include("can't be blank")
    end

    it "priceが空では登録不可" do
      product = build(:product, price: "")
      product.valid?
      expect(product.errors[:price]).to include("can't be blank")
    end

    it "cityが空では登録不可" do
      product = build(:product, city: "")
      product.valid?
      expect(product.errors[:city]).to include("can't be blank")
    end

    it "deliveryが空では登録不可" do
      product = build(:product, delivery: "")
      product.valid?
      expect(product.errors[:delivery]).to include("can't be blank")
    end

    it "すべて満たしていれば登録可" do
      product = create(:product)
      expect(product).to be_valid
    end


  end
end