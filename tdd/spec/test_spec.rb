require "test.rb"
require "rspec"


RSpec.describe Array do
  describe "#my_uniq" do
    subject(:dummy){[1,2,1,3,3]}
    it "removes duplicate elements from an array" do
      expect(dummy.my_uniq).to eq([1,2,3])
    end
    it "does not call the uniq method" do
      expect(dummy).not_to receive(:uniq)
    end
    it "does not modify the original array" do
      expect(dummy.my_uniq).to_not be(dummy)
    end

  end
  describe "#two_sum" do
    subject(:dummy){ [-1, 0, 2, -2, 1] }
    it "does not create any duplicates pairs" do
        expect(dummy.two_sum).to eq([[0, 4], [2,3]])
    end

    it "returns an array of indicies whose elements sum to zero" do
        expect(dummy.two_sum).to eq([[0, 4], [2,3]])
    end

  end
  describe "#my_transpose" do
    subject(:enzo){ [ [0,1,2],
                      [3,4,5],
                      [6,7,8]]}
    let(:fudge){[[0,3,6],
                 [1,4,7],
                 [2,5,8]]}
    it "does not call the built-in transpose method" do
      expect(enzo).to_not receive(:transpose)
    end
    it "transposes rows onto columns" do

      expect(enzo.my_transpose).to eq(fudge)
    end

  end

end
