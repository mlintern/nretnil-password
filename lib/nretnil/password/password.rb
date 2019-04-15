#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Password Class
  class Password
    SUBSTITUTIONS = { a: '@', e: '3', i: '!', o: '0', s: '$' }.freeze

    def character_with_symbols
      pass = Password.new
      type_rand = rand(10)
      if type_rand < 3 # number
        a = p = rand(10)
      elsif type_rand > 7 # symbol
        sym_rand = rand(pass.symbols.length)
        a = pass.symbols[sym_rand]
        p = pass.phonetic_symbols[sym_rand]
      else # letter
        case_rand = rand(2)
        sym_rand = rand(pass.alpha.length)
        a = case_rand.zero? ? pass.alpha[sym_rand] : pass.alpha[sym_rand].upcase
        p = case_rand.zero? ? pass.phonetic_alpha[sym_rand] : pass.phonetic_alpha[sym_rand].upcase
      end
      { a: a, p: p }
    end

    def character_no_symbols
      pass = Password.new
      type_rand = rand(10)
      if type_rand < 4 # number
        a = p = rand(10)
      else # letter
        case_rand = rand(2)
        sym_rand = rand(pass.alpha.length)
        a = case_rand.zero? ? pass.alpha[sym_rand] : pass.alpha[sym_rand].upcase
        p = case_rand.zero? ? pass.phonetic_alpha[sym_rand] : pass.phonetic_alpha[sym_rand].upcase
      end
      { a: a, p: p }
    end

    def get_next(symbols = false)
      pass = Password.new
      return pass.character_with_symbols if symbols

      pass.character_no_symbols
    end

    def to_phonetic(password)
      return false if password.nil?

      pass = Password.new
      new_pass = ''
      password.split('').each do |c|
        new_char = ''
        cap = (c == c.upcase)
        space = c.strip.empty?
        alpha = pass.alpha.find_index(c.downcase)
        sym = pass.symbols.find_index(c)
        new_char = '(' + pass.phonetic_alpha[alpha] + ')' unless alpha.nil?
        new_char = pass.phonetic_symbols[sym].upcase unless sym.nil?
        new_char = '(' + pass.phonetic_numbers[c.to_i] + ')' if alpha.nil? && sym.nil? && !space
        new_char = '(SPACE)' if space
        new_pass += cap && !alpha.nil? ? new_char.upcase.gsub('(', '(CAPITAL-') : new_char.upcase
        new_pass += ' '
      end
      new_pass.strip
    end

    def self.generate(length = 15, symbols = false)
      pass = Password.new
      password = ''
      phonetic = ''
      (1..length).each do |_i|
        char = pass.get_next(symbols)
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
      pass = Password.new
      uuid = ''
      (0...32).each do |i|
        uuid += '-' if [8, 12, 16, 20].include? i
        uuid += pass.hex[rand(16)].to_s
      end
      uuid
    end

    def self.phrase
      pass = Password.new
      phonetic = pass.colors[rand(pass.colors.length)][:name].downcase + ' ' + pass.animals[rand(pass.animals.length)] + ' ' + pass.verbs[rand(pass.verbs.length)] + ' ' + pass.nouns[rand(pass.nouns.length)]
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
