module Vscale
  class Client
    module Billing

      def balance
        get("/billing/balance")
      end

      def payments
        get("/billing/payments")
      end

      def consumptions(startDate = nil, endDate = nil)
        get("/billing/consumption?start=#{startDate}&end=#{endDate}")
      end

    end
  end
end