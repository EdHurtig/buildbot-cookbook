include_recipe 'buildbot::common'

buildbot_slave 'slave-01' do
  path '/tmp/buildbot-slave-01'
  password node['buildbot']['slave']['password']
end
