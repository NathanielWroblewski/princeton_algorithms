class QuickFind
  def initialize(number_of_nodes)
    @ids = (0..number_of_nodes).to_a || []
  end

  def connected?(first_node, second_node)
    ids[first_node] == ids[second_node]
  end

  def union(first_node, second_node)
    first_node_id = ids[first_node]
    second_node_id = ids[second_node]
    ids.map!{|id| id == first_node_id ? second_node_id : id }
  end
end
