module Vscale
  class Client
    module Scalets
      def all
        get("/scalets")
      end

      def create(options)
        post("/scalets", options)
      end

      def info(ctid)
        get("/scalets/#{ctid}")
      end

      def restart(ctid)
        patch("/scalets/#{ctid}/restart")
      end

      def stop(ctid)
        patch("/scalets/#{ctid}/stop")
      end

      def start(ctid)
        patch("/scalets/#{ctid}/start")
      end

      def upgrade(ctid, options = {})
        patch("/scalets/#{ctid}/upgrade", options)
      end

      def delete(ctid)
        delete("/scalets/#{ctid}")
      end

      def ssh_key(ctid, options = {})
        patch("/sshkeys/scalets/#{ctid}", options)
      end
    end
  end
end