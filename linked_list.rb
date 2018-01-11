class Node
  attr_reader :data, :next_node

  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end
end

def stringify(list)
  str = []
  current_node = list
  loop do
    str << current_node.data
    break unless current_node.next_node
    current_node = current_node.next_node
  end
  str.join(' -> ') + ' -> nil'
end

linked_list = Node.new(1, Node.new(2, Node.new(3)))
stringify(linked_list)
