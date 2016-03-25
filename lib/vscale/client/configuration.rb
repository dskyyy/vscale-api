module Vscale
  class Client
    module Configuration

      def plans
        get("/rplans")
      end

      def prices
        get("/billing/prices")
      end

    end
  end
end
