require 'rubygems'
require 'bundler/setup'
require 'discordrb'
require 'dotenv/load'

module Bender
  class Bot
    def initialize
      @bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_TOKEN'], prefix: 'pimp '
    
      @bot.subscribe
    end

    def start
      @bot.run
    end

    private

    def subscribe; end
  end
end
