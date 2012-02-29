require "base64"
require "cinch/sasl/mechanism"

module Cinch
  module SASL
    class Plain < Mechanism
      class << self
        def generate(user, password, _ = nil)
          Base64.strict_encode64([user, user, password].join("\0"))
        end
      end
    end
  end
end
