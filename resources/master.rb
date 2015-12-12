actions :create, :remove

attribute :name,        kind_of: String, name_attribute: true
attribute :path,        kind_of: String


attribute :owner,       kind_of: String, default: 'buildmaster'
attribute :group,       kind_of: String, default: 'buildmaster'
attribute :custom,      kind_of: String

default_action :install
