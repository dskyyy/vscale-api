module Vscale
  class Client
    module SshKey

      def all
        get("/sshkeys")
      end

      def create(options = {})
        post("/sshkeys", options)
      end

      def delete(key)
        delete("/sshkeys/#{key}")
      end
    end
  end
end
