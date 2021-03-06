class HomePage < PushType::Node

  # By default a node can have children of any other node type.
  # Optionally pass a list of acceptable node types or prevent
  # any descendents by passing false.
  has_child_nodes :all

  # Model the content by adding custom fields to the node.
  field :meta_title, :string
  field :meta_description, :string
  field :meta_keywords, :tag_list

  field :heading_section, :structure
end
