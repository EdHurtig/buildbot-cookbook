action :install do
  directory new_resource.path do
    owner new_resource.owner
    group new_resource.group
    recursive true
  end

  python_virtualenv new_resource.path do
    owner new_resource.owner
    group new_resource.group
    action :create
  end

  python_pip 'buildbot-slave' do
    virtualenv new_resource.path
  end

  execute 'name' do
    command ". bin/activate && buildslave create-slave #{new_resource.path} #{new_resource.master_host}:#{new_resource.master_port} #{new_resource.name} #{new_resource.password} #{new_resource.custom}"
    cwd new_resource.path
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
