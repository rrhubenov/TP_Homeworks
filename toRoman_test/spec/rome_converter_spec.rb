require 'rome_converter'

RSpec.describe RomeConverter do
    context "Testing if converter works properly - decimal to Roman"
        it "1 to I" do
            test = RomeConverter.new
            expect(test.to_rome 1).to eq "I"
        end
        it "4 to IV" do
            test = RomeConverter.new
            expect(test.to_rome 4).to eq "IV"
        end
        it "5 to V" do
            test = RomeConverter.new
            expect(test.to_rome 5).to eq "V"
        end
        it "9 to IX" do
            test = RomeConverter.new
            expect(test.to_rome 9).to eq "IX"
        end
        it "10 to X" do
            test = RomeConverter.new
            expect(test.to_rome 10).to eq "X"
        end
        it "40 to V" do
            test = RomeConverter.new
            expect(test.to_rome 40).to eq "XL"
        end
        it "50 to L" do
            test = RomeConverter.new
            expect(test.to_rome 50).to eq "L"
        end
        it "90 to XC" do
            test = RomeConverter.new
            expect(test.to_rome 90).to eq "XC"
        end
        it "100 to C" do
            test = RomeConverter.new
            expect(test.to_rome 100).to eq "C"
        end
        it "400 to CD" do
            test = RomeConverter.new
            expect(test.to_rome 400).to eq "CD"
        end
        it "500 to D" do
            test = RomeConverter.new
            expect(test.to_rome 500).to eq "D"
        end
        it "900 to CM" do
            test = RomeConverter.new
            expect(test.to_rome 900).to eq "CM"
        end
        it "1000 to M" do
            test = RomeConverter.new
            expect(test.to_rome 1000).to eq "M"
        end 
end

RSpec.describe RomeConverter do
    context "Testing if converter works properly - Roman to decimal"
        it "I to 1" do
            test = RomeConverter.new
            expect(test.to_dec "I").to eq 1
        end
        it "IV to 4" do
            test = RomeConverter.new
            expect(test.to_dec "IV").to eq 4
        end
        it "V to 5" do
            test = RomeConverter.new
            expect(test.to_dec "V").to eq 5
        end
        it "IX to 9" do
            test = RomeConverter.new
            expect(test.to_dec "IX").to eq 9
        end
        it "X to 10" do
            test = RomeConverter.new
            expect(test.to_dec "X").to eq 10
        end
        it "XL to 40" do
            test = RomeConverter.new
            expect(test.to_dec "XL").to eq 40
        end
        it "L to 50" do
            test = RomeConverter.new
            expect(test.to_dec "L").to eq 50
        end
        it "XC to 90" do
            test = RomeConverter.new
            expect(test.to_dec "XC").to eq 90
        end
        it "C to 100" do
            test = RomeConverter.new
            expect(test.to_dec "C").to eq 100
        end
        it "CD to 400" do
            test = RomeConverter.new
            expect(test.to_dec "CD").to eq 400
        end
        it "D to 500" do
            test = RomeConverter.new
            expect(test.to_dec "D").to eq 500
        end
        it "CM to 900" do
            test = RomeConverter.new
            expect(test.to_dec "CM").to eq 900
        end
        it "M to 1000" do
            test = RomeConverter.new
            expect(test.to_dec "M").to eq 1000
        end 
end
