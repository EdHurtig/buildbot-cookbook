include_recipe 'buildbot::common'

buildbot_master 'master-01' do
  path '/tmp/buildbot-master'
end
