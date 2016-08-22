#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/var/www' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file node['src_filename'] do
  source 'env.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end