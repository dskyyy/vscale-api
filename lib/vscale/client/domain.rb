module Vscale
  class Client
    module Domain

      def all
        get("/domains")
      end

      def show(domain_id)
        get("/domains/#{domain_id}")
      end

      def create(options = {})
        post("/domains", options)
      end

      def update(domain_id, options={})
        patch("/domains/#{domain_id}", options)
      end

      def destroy(domain_id)
        delete("/domains/#{domain_id}")
      end

    end
  end
end