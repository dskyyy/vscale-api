module Vscale
  class Client
    module Account
      def info
        get("/account")
      end

      def account_state
        get("/auth")
      end
    end
  end
end