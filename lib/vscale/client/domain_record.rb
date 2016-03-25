module Vscale
  class Client
    module DomainRecord

      def all(domain_id)
        get("/domains/#{domain_id}/records")
      end

      def show(domain_id, record_id)
        get("/domains/#{domain_id}/records/#{record_id}")
      end

      def create(domain_id, options = {})
        post("/domains/#{domain_id}/records", options)
      end

      def update(domain_id, record_id, options = {})
        put("/domains/#{domain_id}/records/#{record_id}", options)
      end

      def destroy(domain_id, record_id)
        delete("/domains/#{domain_id}/records/#{record_id}")
      end

    end
  end
end