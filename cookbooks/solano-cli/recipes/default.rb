#
# Cookbook Name:: solano-cli
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Run build.sh

directory '/home/kitchen/solano' do
  owner 'kitchen'
  group 'omnibus'
  mode '0755'
  action :create
end

#remote_directory '/home/kitchen/solano' do
#  path .
#  owner 'kitchen'
#  group 'omnibus'
#  mode '0755'
#  action :create
#end

#ruby_block "get the windows resources" do
#  block do
#    FileUtils.mkdir_p mod_path
#    FileUtils.cp_r(Dir["#{RESOURCE_DIR}/*.exe"], Chef::Config[:file_cache_path])
#  end
#end

cookbook_file '/home/kitchen/build.sh' do
  source 'build.sh'
  owner 'kitchen'
  group 'omnibus'
  mode '0777'
  action :create
end

execute "bash -c /home/kitchen/build.sh" do
  command "bash -c /home/kitchen/build.sh"
  action :run
end