require 'vscale/client/connection'

require 'vscale/client/token'
require 'vscale/client/account'
require 'vscale/client/scalet'
require 'vscale/client/background'
require 'vscale/client/configuration'
require 'vscale/client/sshkey'
require 'vscale/client/billing'
require 'vscale/client/ticket'

module Vscale
  class Client
    include HTTParty
    include Vscale::Client::Token
    include Vscale::Client::Account
    include Vscale::Client::Scalet
    include Vscale::Client::Background
    include Vscale::Client::Configuration
    include Vscale::Client::SshKey
    include Vscale::Client::Billing
    include Vscale::Client::Ticket

    base_uri "https://api.vscale.io/v1"
    format :json

    def initialize(token = nil)
      @token = token || ENV["VSCALE_TOKEN"]
      self.class.default_options.merge!(headers: {"X-Token" => @token})
    end
  end
end