actions :create, :remove

attribute :name,        kind_of: String, name_attribute: true
attribute :path,        kind_of: String


attribute :owner,       kind_of: String, default: 'buildslave'
attribute :group,       kind_of: String, default: 'buildslave'
attribute :master_host, kind_of: String, default: 'localhost'
attribute :master_port, kind_of: Integer, default: 42012
attribute :password,    kind_of: String
attribute :custom,      kind_of: String

default_action :install
