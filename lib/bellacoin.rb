require 'digest'

class BellaCoin

    def self.hash(string)
        Digest::SHA256.hexdigest(string)
    end
end