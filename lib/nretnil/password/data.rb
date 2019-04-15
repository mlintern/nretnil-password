#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Password Class
  class Password
    SYMBOLS = ['~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '+'].freeze
    PHONETIC_SYMBOLS = ['(tilda)', '(exclamation-point)', '(at)', '(hash)', '(dollar-sign)', '(percent-sign)', '(carrot)', '(ampersand)', '(star)', '(left-parenthesis)', '(right-parenthesis)', '(dash)', '(plus)'].freeze
    ALPHA = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z].freeze
    PHONETIC_ALPHA = ['alpha', 'bravo', 'charlie', 'delta', 'echo', 'foxtrot', 'golf', 'hotel', 'india', 'juliet', 'kilo', 'lima', 'mike', 'november', 'oscar', 'papa', 'quebec', 'romeo', 'sierra', 'tango', 'uniform', 'victor', 'whiskey', 'x-ray', 'yankee', 'zulu'].freeze
    PHONETIC_NUMBERS = ['ze-ro', 'wun', 'too', 'tree', 'row er', 'fife', 'six', 'seven', 'ait', 'niner'].freeze
    HEX = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'].freeze

    def symbols
      SYMBOLS
    end

    def phonetic_symbols
      PHONETIC_SYMBOLS
    end

    def alpha
      ALPHA
    end

    def phonetic_alpha
      PHONETIC_ALPHA
    end

    def phonetic_numbers
      PHONETIC_NUMBERS
    end

    def hex
      HEX
    end
  end
end
