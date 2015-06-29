describe Stack do

  let(:stack) { Stack.new }

  describe '#pop' do

    it 'should pop the elements that were pushed in reverse order' do
      stack.push(1)
      stack.push(2)
      stack.push(3)

      expect(stack.pop.value).to eq(3)
      expect(stack.pop.value).to eq(2)
      expect(stack.pop.value).to eq(1)
    end

  end

end
