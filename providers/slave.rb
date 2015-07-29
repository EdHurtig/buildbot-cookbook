action :install do
  python_virtualenv new_resource.path do
    owner new_resource.owner
    group new_resource.group
    action :create
  end

  python_pip 'buildbot' do
    virtualenv new_resource.path
  end
end

action :remove do
  python_virtualenv new_resource.path do
    owner new_resource.owner
    group new_resource.group
    action :delete
  end

  directory new_resource.path do
    recursive true
    action :delete
  end
end
