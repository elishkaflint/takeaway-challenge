require 'order'

describe Order do

  it { is_expected.to respond_to(:add).with(1).argument }

  let(:order)         { described_class.new(menu, selection) }

  let(:menu)          { double :menu, new: list }
  let(:list)          { double :list, options: "chicken" }

  let(:selection)     { double :selection, new: choices }
  let(:choices)       { double :choices, choices: [] }

  describe '#initialize' do
    it 'initializes with a menu' do
      expect(order.menu).to eq list
    end

    it 'initializes with an empty selection array' do
      expect(order.selection).to eq choices
    end

  end

  describe '#list_options' do
    it 'shows the options' do
      expect(order.list_options).to eq "chicken"
    end
  end

  describe '#add' do
    it 'adds a choice to the selection array' do
      # test needs to be mocked
      order = Order.new
      order.add("chicken")
      expect(order.selection.choices).to include "chicken"
    end
  end
end
