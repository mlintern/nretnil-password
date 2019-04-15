#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Password Class
  class Password
    SUBSTITUTIONS = { a: '@', e: '3', i: '!', o: '0', s: '$' }.freeze

    def self.character_with_symbols
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
      return character_with_symbols if symbols

      character_no_symbols
    end

    def self.to_phonetic(password)
      return false if password.nil?

      new_pass = ''
      password.split('').each do |c|
        new_char = ''
        cap = (c == c.upcase)
        space = c.strip.empty?
        alpha = ALPHA.find_index(c.downcase)
        sym = SYMBOLS.find_index(c)
        new_char = '(' + PHONETIC_ALPHA[alpha] + ')' unless alpha.nil?
        new_char = PHONETIC_SYMBOLS[sym].upcase unless sym.nil?
        new_char = '(' + PHONETIC_NUMBERS[c.to_i] + ')' if alpha.nil? && sym.nil? && !space
        new_char = '(SPACE)' if space
        new_pass += cap && !alpha.nil? ? new_char.upcase.gsub('(', '(CAPITAL-') : new_char.upcase
        new_pass += ' '
      end
      new_pass.strip
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
