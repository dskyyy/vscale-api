module Vscale
  class Client
    module Notification

      def billing_notify
        get("/billing/notify")
      end

      def billing_notify_when(options = {})
        put("/billing/notify", options)
      end

    end
  end
end