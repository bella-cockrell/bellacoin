require 'bellacoin'

describe BellaCoin, "#hash" do

    context "when string is parsed" do

        it "produces the correct hash" do
            expect(described_class.hash("Hello, Cryptos!")).to eq("33eedea60b0662c66c289ceba71863a864cf84b00e10002ca1069bf58f9362d5")
        end
        
    end
end