require 'RSA'

RSpec.describe RSA do
   context "Recieve a string, encrypt it and return the same string after decrypting it"
    it "Basic test with Hello World!" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        enc_message = test.encrypt "Hello World!"
        expect(test.decrypt(enc_message)).to eq "Hello World!"
    end

    it "Basic test with numbers" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        enc_message = test.encrypt "12344321 - 123 - 159"
        expect(test.decrypt(enc_message)).to eq "12344321 - 123 - 159"
    end

    it "Basic test which combines characters" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        enc_message = test.encrypt "Hello 123 from 456 !@# )(* Bulgaria! Оправи си табовете брат"
        expect(test.decrypt(enc_message)).to eq "Hello 123 from 456 !@# )(* Bulgaria! Оправи си табовете брат"
    end

    it "Basic test with long string" do #I am sorry for the ugly test
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        enc_message = test.encrypt "1111111111111111111111111111111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111111111111111111111111111111111
        11111111111111111111111111111111111111111111"
        expect(test.decrypt(enc_message)).to eq "1111111111111111111111111111111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111111111111111111111111111111111
        11111111111111111111111111111111111111111111"
    end

    context "Test getters" 
    it "Test 'n'" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        expect(test.n).to eq keys[0]
    end

    it "Test 'e'" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        expect(test.e).to eq keys[1]
    end

    it "Test 'd'" do
        keys = RSA.new_key
        test = RSA.new(keys[0], keys[1], keys[2])
        expect(test.d).to eq keys[2]
    end
end