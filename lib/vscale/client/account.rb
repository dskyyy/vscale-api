module Vscale
  class Client
    module Account

      def info
        get("/account")
      end
      
    end
  end
end