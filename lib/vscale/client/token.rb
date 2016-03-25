module Vscale
  class Client
    module Token

      def all
        get("/tokens")
      end

      def create(options = {})
        post("/tokens", options)
      end

      def info(id)
        get("/tokens/#{id}")
      end

      def edit(id, options = {})
        post("/tokens/#{id}", options)
      end

      def destroy(id)
        delete("/tokens/#{id}")
      end
    end
  end
end