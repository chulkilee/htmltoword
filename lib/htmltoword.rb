# encoding: UTF-8
require 'nokogiri'
require 'zip'
require 'htmltoword/configuration'

module Htmltoword
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end

    alias :config :configuration
  end
end


require 'htmltoword/version'
require 'htmltoword/htmltoword_helper'
require 'htmltoword/document'

if defined?(ActionController)
  require 'htmltoword/action_controller'
end
