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


end
