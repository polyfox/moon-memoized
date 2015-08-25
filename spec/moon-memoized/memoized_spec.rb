require 'spec_helper'
require 'moon-memoized/load'

module Fixtures
  class MemoizedTest
    extend Moon::Memoized

    memoize_attr :name, 'Eggo'
    memoize_attr(:age) { 18 }
    memoize_attr(:name_length) { name.size }
  end
end

describe Moon::Memoized do
  context '.memoize_attr' do
    it 'works' do
      memo = Fixtures::MemoizedTest.new
      expect(memo.name).to eq('Eggo')
      expect(memo.age).to eq(18)
      expect(memo.name_length).to eq(4)
    end
  end
end
