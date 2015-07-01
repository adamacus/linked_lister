class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list, previous=nil)
  next_node = list.next_node
  list.next_node = previous
  list = reverse_list(next_node, list) unless next_node.nil?
  list
end

def has_cycle?(x0)
  f = lambda { |x| x.nil? ? nil : x.next_node }

  tortoise = f[x0]
  hare = f[f[x0]]

  while tortoise != hare
    tortoise = f[tortoise]
    hare = f[f[hare]]
  end

  return !tortoise.nil? || !hare.nil?
end


#def reverse_list(list)
#  stack = Stack.new
#
#  while list
#    stack.push list.value
#    list = list.next_node
#  end
#
#  stack.pop
#end
