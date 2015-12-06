require_relative "../converter"

RSpec.describe Converter do
  describe "#to_base16" do
    let(:converter) { Converter.new }
    context "when passed" do

      it "17 will return A" do
        expect(converter.to_base16(10)).to eq("A")
      end

      it "20 will return 14" do
        expect(converter.to_base16(20)).to eq("14")
      end

      it "255 will return FF" do
        expect(converter.to_base16(255)).to eq("FF")
      end

      it "510 will return 1FE" do
        expect(converter.to_base16(510)).to eq("1FE")
      end

      it "1234567189 will return 49960015" do
        expect(converter.to_base16(1234567189)).to eq("49960015")
      end

    end
  end

  describe "#from_base16" do
    let(:converter) { Converter.new }

    context "when passed" do
      it "20 will return 17" do
        expect(converter.from_base16("A")).to eq(10)
      end

      it "14 will return 20" do
        expect(converter.from_base16("14")).to eq(20)
      end

      it "255 will return FF" do
        expect(converter.from_base16("FF")).to eq(255)
      end

      it "1FE will return 510" do
        expect(converter.from_base16("1FE")).to eq(510)
      end

      it "49960015 will return 1234567189" do
        expect(converter.from_base16("49960015")).to eq(1234567189)
      end

    end
  end
end

