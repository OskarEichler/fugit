# frozen_string_literal: true


module Fugit

  VERSION = '1.14.0'

  MAX_INPUT_BYTES = 1_024

  def self.input_too_long?(input)

    input.is_a?(String) && input.bytesize > MAX_INPUT_BYTES
  end

  def self.check_input_length!(input)

    return unless input_too_long?(input)

    fail ArgumentError.new(
      "input too long, #{input.bytesize} bytes > #{MAX_INPUT_BYTES}")
  end
end

require 'time'
require 'stringio'

require 'raabro'
require 'et-orbi'

require 'fugit/misc'
require 'fugit/cron'
require 'fugit/duration'
require 'fugit/nat'
require 'fugit/at'
require 'fugit/parse'

