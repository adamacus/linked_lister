class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
    @data = LinkedListNode.new(element, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    popped = @data
    @data = @data.next_node
    popped
  end

end

