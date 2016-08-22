#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# data_bag_item('admins', 'justin')
#data = data_bag_item( 'databagname', 'itemname' )
#databag = data_bag_item( 'fileLocation', 'src' )
#databagitem = node.hostname
#databagitemBranch = node.hostname + "_environmentCodeBranch"
#puts databagitem
#puts databagitemBranch
#node = "ubs1"

#file '/home/paul/variables.txt' do
#  content "node=#{node}"
#end

#directory '/var/www' do
#  owner 'root'
#  group 'root'
#  mode '0755'
#  action :create
#end

#cookbook_file databag[databagitemBranch] do
#  source 'env.txt'
#  owner 'root'
#  group 'root'
#  mode '0755'
#  action :create
#end

envRecipe = "deploy::deploy_" + "#{node.chef_environment}"
serverName = node.hostname
if serverName.include? "ubs1"
	include_recipe envRecipe
else
	include_recipe "deploy::deploy_dev"
end

puts envRecipe 

#include_recipe envRecipe