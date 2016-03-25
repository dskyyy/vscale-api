module Vscale
  class Client
    module SshKey

      def all
        get("/sshkeys")
      end

      def add(options = {})
        post("/sshkeys", options)
      end

      def destroy(key)
        delete("/sshkeys/#{key}")
      end

    end
  end
end
