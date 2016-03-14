require_relative 'linked_list'

describe 'Link' do
  let(:link1) { Link.new(1) }
  let(:link2) { Link.new(2) }
  let(:link3) { Link.new(3) }

  describe '#insert' do
    before(:each) { link1.insert(link2) }

    it 'adds a link as a child and updates #next value' do
      expect(link1.next).to eq(link2)
    end

    it 'udpates child node #prev value' do
      expect(link2.prev).to eq(link1)
    end
  end

  describe '#remove' do
    before(:each) do
      link1.insert(link2)
      link2.insert(link3)
      link3.remove
    end

    it 'updates parent node #next value' do
      expect(link2.next).to eq(nil)
    end

    it 'updates self #prev value' do
      expect(link3.prev).to eq(nil)
    end
  end
end

describe 'DoublyLinkedList' do
  let(:link1) { Link.new(1) }
  let(:link2) { Link.new(2) }
  let(:link3) { Link.new(3) }
  let(:list) { DoublyLinkedList.new(link1) }

  describe '#first' do
    it 'defaults to the head' do
      expect(list.first).to eq(link1)
    end
  end

  describe '#last' do
    it 'defaults to the head' do
      expect(list.last).to eq(link1)
    end
  end

  describe '#push' do
    before(:each) { list.push(link2) }

    it 'returns the pushed link' do
      expect(list.push(link3)).to eq(link3)
    end

    it 'adds a link to the list' do
      expect(list.first.next).to eq(link2)
    end

    it 'updates the value of #last' do
      expect(list.last).to eq(link2)
    end
  end

  describe '#pop' do
    before(:each) do
      list.push(link2)
      list.push(link3)
    end

    it 'returns the popped link' do
      expect(list.pop).to eq(link3)
    end

    it 'updates the value of #last' do
      list.pop

      expect(list.last).to eq(link2)
    end
  end


end
