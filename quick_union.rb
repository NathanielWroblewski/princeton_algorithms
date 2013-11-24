class QuickUnion
  def initialize(number_of_nodes)
    @ids = (0..number_of_nodes).to_a
  end

  def root(node)
    node = @ids[node] until node == @ids[node]
    node
  end

  def connected?(first_node, second_node)
    root(first_node) == root(second_node)
  end

  def union(first_node, second_node)
    first_root = root(first_node)
    second_root = root(second_node)
    @ids[first_root] = second_root
  end
end
