require 'rubygems'
require 'httparty'

module Nretnil
  module Password

    def symbols
      ["~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "+"];
    end

    def sym_names
      ["<Tilda>", "<Explamation Point>", "<At>", "<Hash>", "<Dollar Sign>", "<Percent Sign>", "<Carrot>", "<Ampersand>", "<Star>", "<Left Parenthesis>", "<Right Parenthesis>", "<Dash>", "<Plus>"]
    end

    def words
      ["alpha", "bravo", "charlie", "delta", "echo", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "uniform", "victor", "whiskey", "x-ray", "yankee", "zulu"];
    end

    def letters
      ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
    end

    def generate(length, symbols = false )
      
    end

    def manual_genrate(length, characters = [])

    end

  end
end