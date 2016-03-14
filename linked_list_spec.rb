require_relative 'linked_list'

describe 'Link' do
  let(:link1) { Link.new(1) }
  let(:link2) { Link.new(2) }

  describe '#insert' do
    before(:each) do
      link1.insert(link2)
    end

    it 'adds a link as a child and updates #next value' do
      expect(link1.next).to eq(link2)
    end

    it 'udpates child node #prev value' do
      expect(link2.prev).to eq(link1)
    end
  end

  describe '#remove' do
    it 'removes self from parent'
    it 'updates parent node #next value'
    it 'updates self #prev value'
  end
end

describe 'DoublyLinkedList' do
  describe '#first' do
    it 'defaults to the head' do
      link1 = Link.new(1)
      list = DoublyLinkedList.new(link1)
      expect(list.first).to eq(link1)
    end
  end

  describe '#last' do
    it 'defaults to the head' do
      link1 = Link.new(1)
      list = DoublyLinkedList.new(link1)
      expect(list.last).to eq(link1)
    end
  end

  describe '#push' do
    it 'adds a link to the list' do
      link1 = Link.new(1)
      link2 = Link.new(2)
      list = DoublyLinkedList.new(link1)
      list.push(link2)
      expect(list.first.next).to eq(link2)
    end

    it 'updates the value of #last' do
      link1 = Link.new(1)
      link2 = Link.new(2)
      list = DoublyLinkedList.new(link1)
      list.push(link2)
      expect(list.last).to eq(link2)
    end
  end

  describe '#pop' do
    it 'removes a link from the end of the list' do
      link1 = Link.new(1)
      link2 = Link.new(2)
      list = DoublyLinkedList.new(link1)
      list.push(link2)
      expect(list.first.next).to eq(link2)
    end

    it 'updates the value of #last' do
      link1 = Link.new(1)
      link2 = Link.new(2)
      list = DoublyLinkedList.new(link1)
      list.push(link2)
      expect(list.last).to eq(link2)
    end
  end


end
