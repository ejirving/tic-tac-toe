require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of an array are empty" do
      expect(["", "", ""].all_empty?).to eq true
    end
    it "returns false if some elements of an array are not empty" do
      expect(["", 1, ""].all_empty?).to eq false
    end
    it "returns true for an empty array" do
      expect([].all_empty?).to eq true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of an array are same" do
      expect(["A", "A", "A"].all_same?).to eq true
    end
    it "returns false if some elements of an array are not empty" do
      expect(["", 1, ""].all_same?).to eq false
    end
    it "returns true for an empty array" do
      expect([].all_same?).to eq true
    end
  end

  context "#any_empty?" do
    it "returns true if any elements of an array are empty" do
      expect(["A", "A", ""].any_empty?).to eq true
    end
    it "returns false if no elements of an array are empty" do
      expect(["A", 1, "A"].any_empty?).to eq false
    end
  end

  context "#none_empty?" do
    it "returns true if all elements of an array are not empty" do
      expect(["A", 1, "A"].none_empty?).to eq true
    end
    it "returns false if some elements of an array are empty" do
      expect(["A", 1, ""].none_empty?).to eq false
    end
  end
end
