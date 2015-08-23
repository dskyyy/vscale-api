module Vscale
  class Client
    include HTTParty
    format :json

    base_url = 'https://api.vscale.io/v1'

    def initialize(token = nil)
      @token = token || ENV['VSCALE_TOKEN']
      self.class.default_options.merge!(headers: {'X-Token' => @token})
    end

    def get_account_info

    end

  end
end