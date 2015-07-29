actions :create, :remove

attribute :name,           kind_of: String, name_attribute: true
attribute :path,           kind_of: String


attribute :owner,          kind_of: Array, default: 'root'
attribute :group,          kind_of: Array, default: 'root'
# attribute :baragon_port,   kind_of: Integer
# attribute :baragon_group,  regex: /^([a-z]|[A-Z]|[0-9]|_|-)+$/
# attribute :upstreams,      kind_of: Hash
# attribute :proxies,        kind_of: Hash
# attribute :include_static

default_action :install
