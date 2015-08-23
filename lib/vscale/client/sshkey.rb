module Vscale
  class Client
    module SshKey

      def keys
        get("/sshkeys")
      end

      def add(options = {})
        post("/sshkeys", options)
      end

      def delete(key)

    end
  end
end
