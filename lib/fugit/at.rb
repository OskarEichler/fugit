# frozen_string_literal: true

module Fugit

  module At

    class << self

      def parse(s, opts={})

        do_parse(s, opts || {}) rescue nil
      end

      def do_parse(s, opts={})

        Fugit.check_input_length!(s)

        case s
        when /^now$/i then ::EtOrbi::EoTime.now
        when String then ::EtOrbi.parse(s, opts || {})
        when ::EtOrbi::EoTime then s
        else ::EtOrbi.make_time(s)
        end
      end
    end
  end
end

