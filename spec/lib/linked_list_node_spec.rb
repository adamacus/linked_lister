describe LinkedListNode do

  describe '#print_values' do
    it 'should print a list' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)

      expect{ print_values(node3) }.to output(
        "12 --> 99 --> 37 --> nil\n"
      ).to_stdout
    end
  end

  describe '#reverse_list' do
    it 'should reverse a list' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)

      expect{ print_values(reverse_list(node3)) }.to output(
        "37 --> 99 --> 12 --> nil\n"
      ).to_stdout

    end
  end

  describe '#has_cycle?' do
    it 'should return true if the list has a cycle' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      node1.next_node = node3

      expect(has_cycle?(node3)).to be_truthy
    end

    it 'should return false if the list does not have a cycle' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)

      expect(has_cycle?(node3)).to be_falsey
    end

    it 'should return false for a single element' do
      node1 = LinkedListNode.new(37)
      expect(has_cycle?(node1)).to be_falsey
    end
  end

end
