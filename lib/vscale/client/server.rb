module Vscale
  class Client
    module Server

      # List of all servers
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

      def rebuild(ctid)
        patch("/scalets/#{ctid}/rebuild")
      end

      def upgrade(ctid, options = {})
        patch("/scalets/#{ctid}/upgrade", options)
      end

      def destroy(ctid)
        delete("/scalets/#{ctid}")
      end

      def tasks
        get("/tasks")
      end

      def ssh_key(ctid, options = {})
        patch("/sshkeys/scalets/#{ctid}", options)
      end

    end
  end
end