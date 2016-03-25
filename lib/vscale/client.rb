require 'vscale/client/connection'

require 'vscale/client/token'
require 'vscale/client/account'
require 'vscale/client/server'
require 'vscale/client/background'
require 'vscale/client/configuration'
require 'vscale/client/sshkey'
require 'vscale/client/billing'
require 'vscale/client/ticket'
require 'vscale/client/domain'
require 'vscale/client/domain_record'
require 'vscale/client/domain_tag'
require 'vscale/client/notification'
require 'vscale/client/ptr_record'

module Vscale
  class Client
    include HTTParty
    include Vscale::Client::Token
    include Vscale::Client::Account
    include Vscale::Client::Server
    include Vscale::Client::Background
    include Vscale::Client::Configuration
    include Vscale::Client::SshKey
    include Vscale::Client::Billing
    include Vscale::Client::Ticket
    include Vscale::Client::Domain
    include Vscale::Client::DomainRecord
    include Vscale::Client::DomainTag
    include Vscale::Client::Notification
    include Vscale::Client::PtrRecord

    base_uri 'https://api.vscale.io/v1'
    format :json

    def initialize(token = nil)
      @token = token || ENV['VSCALE_TOKEN']
      self.class.default_options.merge!(headers: {'X-Token' => @token})
    end
  end
end