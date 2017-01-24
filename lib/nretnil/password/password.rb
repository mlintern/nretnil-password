#!/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Password Class
  class Password
    SYMBOLS = ['~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '+'].freeze
    PHONETIC_SYMBOLS = ['(tilda)', '(explamation point)', '(at)', '(hash)', '(dollar sign)', '(percent sign)', '(carrot)', '(ampersand)', '(star)', '(left parenthesis)', '(right parenthesis)', '(dash)', '(plus)'].freeze
    ALPHA = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z).freeze
    PHONETIC_ALPHA = ['alpha', 'bravo', 'charlie', 'delta', 'echo', 'foxtrot', 'golf', 'hotel', 'india', 'juliet', 'kilo', 'lima', 'mike', 'november', 'oscar', 'papa', 'quebec', 'romeo', 'sierra', 'tango', 'uniform', 'victor', 'whiskey', 'x-ray', 'yankee', 'zulu'].freeze
    HEX = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f'].freeze
    SUBSTITUTIONS = { a: '@', e: '3', i: '!', o: '0', s: '$' }.freeze

    def self.charater_with_symbols
      type_rand = rand(10)
      if type_rand < 3 # number
        a = p = rand(10)
      elsif type_rand > 7 # symbol
        sym_rand = rand(SYMBOLS.length)
        a = SYMBOLS[sym_rand]
        p = PHONETIC_SYMBOLS[sym_rand]
      else # letter
        case_rand = rand(2)
        sym_rand = rand(ALPHA.length)
        a = case_rand.zero? ? ALPHA[sym_rand] : ALPHA[sym_rand].upcase
        p = case_rand.zero? ? PHONETIC_ALPHA[sym_rand] : PHONETIC_ALPHA[sym_rand].upcase
      end
      { a: a, p: p }
    end

    def self.character_no_symbols
      type_rand = rand(10)
      if type_rand < 4 # number
        a = p = rand(10)
      else # letter
        case_rand = rand(2)
        sym_rand = rand(ALPHA.length)
        a = case_rand.zero? ? ALPHA[sym_rand] : ALPHA[sym_rand].upcase
        p = case_rand.zero? ? PHONETIC_ALPHA[sym_rand] : PHONETIC_ALPHA[sym_rand].upcase
      end
      { a: a, p: p }
    end

    def self.get_next(symbols = false)
      return charater_with_symbols if symbols
      character_no_symbols
    end

    def self.generate(length = 15, symbols = false)
      password = ''
      phonetic = ''
      (1..length).each do |_i|
        char = get_next(symbols)
        password += char[:a].to_s
        phonetic += char[:p].to_s + ' '
      end

      { password: password, phonetic: phonetic }
    end

    def self.custom(length, characters = [])
      password = ''

      (1..length).each do |_i|
        password += characters[rand(characters.length)].to_s
      end

      { password: password }
    end

    def self.uuid
      uuid = ''
      (0...32).each do |i|
        uuid += '-' if [8, 12, 16, 20].include? i
        uuid += HEX[rand(16)].to_s
      end
      uuid
    end

    def self.phrase
      phonetic = COLORS[rand(COLORS.length)][:name].downcase + ' ' + ANIMALS[rand(ANIMALS.length)] + ' ' + VERBS[rand(VERBS.length)] + ' ' + NOUNS[rand(NOUNS.length)]
      password = phonetic.delete(' ')
      { password: password, phonetic: phonetic, sym_sub_pass: sym_sub(password), sym_sub_phon: sym_sub(phonetic) }
    end

    def self.sym_sub(string)
      new_string = ''
      string.split(//).each do |c|
        new_string += SUBSTITUTIONS[c.downcase.to_sym].nil? ? c : SUBSTITUTIONS[c.downcase.to_sym]
      end
      new_string
    end
  end
end
