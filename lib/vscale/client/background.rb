module Vscale
  class Client
    module Background

      def locations
        get("/locations")
      end

      def images
        get("/images")
      end

    end
  end
end
