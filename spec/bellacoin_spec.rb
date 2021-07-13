require 'bellacoin'

describe BellaCoin, "#hash" do

    context "when string is parsed" do

        hash_examples = {
            "Hello, Cryptos!" => "33eedea60b0662c66c289ceba71863a864cf84b00e10002ca1069bf58f9362d5",
            "Your Name Here" => "39459289c09c33a7b516bef926c1873c6ecd2e6db09218b065d7465b6736f801",
            "Data Data Data Data" => "a7bbfc531b2ecf641b9abcd7ad8e50267e1c873e5a396d1919f504973090565a" 
        }

        hash_examples.each do |key, value|
            it "the string '#{key}' produces the correct hash" do
                expect(described_class.hash(key)).to eq(value)
            end
        end

        hash_examples.each do |key, _value|
            it "the string '#{key}' always produces a hash of 64 characters" do
                expect(described_class.hash(key).length).to eq(63)
            end
        end

    end    
end