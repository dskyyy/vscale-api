module Vscale
  class Client
    module DomainTag

      def all
        get("/domains/tags")
      end

      def show(tag_id)
        get("/domains/tags/#{tag_id}")
      end

      def create(options = {})
        post("/domains/tags", options)
      end

      def update(tag_id, options = {})
        put("/domains/tags/#{tag_id}", options)
      end

      def destroy(tag_id)
        delete("/domains/tags/#{tag_id}")
      end

    end
  end
end