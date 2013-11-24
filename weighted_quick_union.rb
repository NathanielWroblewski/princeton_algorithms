class QuickUnion
  attr_accessor :ids, :sizes

  def initialize(number_of_nodes)
    @ids = (0..number_of_nodes).to_a
    @sizes = Array.new(number_of_nodes, 1)
  end

  def root(node)
    node = ids[node] until node == ids[node]
    node
  end

  def connected?(first_node, second_node)
    root(first_node) == root(second_node)
  end

  def union(first_node, second_node)
    first_root = root(first_node)
    second_root = root(second_node)
    if sizes[first_root] < sizes[second_root]
      ids[first_root] = second_root
      sizes[second_root] += sizes[first_root]
    else
      ids[second_root] = second_root
      sizes[first_root] += sizes[second_root]
    end
  end
end
