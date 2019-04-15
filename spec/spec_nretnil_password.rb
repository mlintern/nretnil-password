# frozen_string_literal: true

require 'spec_helper'

describe 'character_with_symbols' do
  before do
    @pass = Nretnil::Password.new
  end

  it 'should produce a hash with a char and photnec equivalent' do
    expect(@pass.character_with_symbols.is_a?(Hash)).to be true
    expect(@pass.character_with_symbols[:a].nil?).to be false
    expect(@pass.character_with_symbols[:p].nil?).to be false
  end
end

describe 'character_no_symbols' do
  before do
    @pass = Nretnil::Password.new
    @character_set = @pass.character_no_symbols
  end

  it 'should produce a hash with a char and photnec equivalent' do
    expect(@character_set.is_a?(Hash)).to be true
    expect(@character_set[:a].nil?).to be false
    expect(@character_set[:p].nil?).to be false
    expect(@pass.symbols.include?(@character_set[:a])).to be false
    expect(@pass.phonetic_symbols.include?(@character_set[:p])).to be false
  end
end

describe 'get_next' do
  before do
    @pass = Nretnil::Password.new
  end

  it 'should produce a hash with a char and photnec equivalent' do
    expect(@pass.get_next.is_a?(Hash)).to be true
    expect(@pass.get_next[:a].nil?).to be false
    expect(@pass.get_next[:p].nil?).to be false
  end
end

describe 'to_phonetic' do
  before do
    @pass = Nretnil::Password.new
    @password = '0n3T20Thr33'
  end

  it '("0n3T20Thr33") should produce a string with correct phonetic parts' do
    expect(@pass.to_phonetic(@password)).to eq '(ZE-RO) (NOVEMBER) (TREE) (CAPITAL-TANGO) (TOO) (ZE-RO) (CAPITAL-TANGO) (HOTEL) (ROMEO) (TREE) (TREE)'
    expect(@pass.to_phonetic(@password).split(' ').length).to eq @password.length
  end
end

describe 'Nretnil::Password.generate' do
  before do
  end

  it 'should produce 15 char password' do
    expect(Nretnil::Password.generate.is_a?(Hash)).to be true
    expect(Nretnil::Password.generate[:password].length).to be 15
    expect(Nretnil::Password.generate[:phonetic].split(' ').length).to be 15
  end

  it 'generate(25) should produce 25 char password' do
    expect(Nretnil::Password.generate(25).is_a?(Hash)).to be true
    expect(Nretnil::Password.generate(25)[:password].length).to be 25
    expect(Nretnil::Password.generate(25)[:phonetic].split(' ').length).to be 25
  end

  it 'generate(25, true) should produce 25 char password' do
    expect(Nretnil::Password.generate(25, true).is_a?(Hash)).to be true
    expect(Nretnil::Password.generate(25, true)[:password].length).to be 25
    expect(Nretnil::Password.generate(25, true)[:phonetic].split(' ').length).to be 25
  end
end

describe 'Nretnil::Password.custom' do
  before do
    @custom_chars = %w[a b c 1 2 3]
  end

  it '(10, %w[a b c 1 2 3]) should produce a 10 char password' do
    password = Nretnil::Password.custom(10, @custom_chars)
    expect(password[:password].length).to be 10
    password[:password].split('').each do |char|
      expect(@custom_chars.include?(char)).to be true
    end
    expect(Nretnil::Password.custom(10, @custom_chars).is_a?(Hash)).to be true
  end
end

describe 'Nretnil::Password.uuid' do
  before do
    @uuid_regex = /[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/
  end

  it 'should produce a 36 char uuid' do
    expect(Nretnil::Password.uuid.length).to be 36
  end

  it 'should be a string' do
    expect(Nretnil::Password.uuid.is_a?(String)).to be true
  end

  it 'should produce a valid uuid' do
    expect(Nretnil::Password.uuid =~ @uuid_regex).not_to be nil
  end
end

describe 'Nretnil::Password.phrase' do
  before do
  end

  it 'should produce a string' do
    expect(Nretnil::Password.phrase.is_a?(Hash)).to be true
    expect(Nretnil::Password.phrase[:phonetic].is_a?(String)).to be true
  end

  it 'should have at least 4 words' do
    expect(Nretnil::Password.phrase.is_a?(Hash)).to be true
    expect(Nretnil::Password.phrase[:phonetic].split(' ').length).to be > 3
  end
end

describe 'Nretnil::Password.sym_sub' do
  before do
    @string = 'TestString'
  end

  it 'should produce a string with equal length' do
    expect(Nretnil::Password.sym_sub(@string).length == @string.length).to be true
  end

  it 'should produce a string that properly substitutes' do
    expect(Nretnil::Password.sym_sub(@string)).to eq 'T3$t$tr!ng'
  end
end
