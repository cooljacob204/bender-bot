# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

require 'discordrb'
require 'dotenv/load'

require_relative 'bender/commands'

module Bender
  class Bot
    def initialize
      @bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_TOKEN'], prefix: 'pimp '

      subscribe
    end

    def start
      @bot.run
    end

    private

    def subscribe
      Bender::Commands::Basics.subscribe(@bot)
    end
  end
end
