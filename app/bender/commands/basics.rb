# frozen_string_literal: true

require_relative '../assets/roasts'

module Bender
  module Commands
    class Basics
      class << self
        def subscribe(bot)
          bot.command :roast do |_event|
            Bender::Assets::Roasts.data.sample
          end
        end
      end
    end
  end
end
