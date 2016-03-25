module Vscale
  class Client
    module PtrRecord

      def all
        get("/domains/ptr")
      end

      def show(ptr_id)
        get("/domains/ptr/#{ptr_id}")
      end

      def create(options = {})
        post("/domains/ptr", options)
      end

      def update(ptr_id, options = {})
        put("/domains/ptr/#{ptr_id}", options)
      end

      def destroy(ptr_id)
        delete("/domains/ptr/#{ptr_id}")
      end

    end
  end
end
