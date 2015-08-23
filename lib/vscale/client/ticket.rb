module Vscale
  class Client
    module Ticket

      def all
        get("/tickets")
      end

      def create(options = {})
        post("/tickets", options)
      end

      def comments(id)
        get("/tickets/#{id}/comments")
      end

      def add_comment(id, options = {})
        post("/tickets/#{id}/comments", options)
      end

      def close(id)
        post("/tickets/#{id}/close")
      end
    end
  end
end
