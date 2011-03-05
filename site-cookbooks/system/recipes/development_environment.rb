#
# Cookbook Name:: system
# Recipe:: development_environment
#
# Copyright 2011, Lee Marlow
#
# All rights reserved - Do Not Redistribute
#

home_root = ENV['HOME']
current_user = node['current_user']
current_group = node['etc']['passwd'][current_user]['gid']

cookbook_file File.join(home_root, '.gemrc') do
  source 'gemrc'
  mode 0644
  owner node['current_user']
  group current_group
end

gem_package 'rake'

dot_vim = File.join(home_root, '.vim')
directory dot_vim do
  action :delete
  recursive true
  not_if { File.directory?(File.join(dot_vim, '.git')) }
end
git File.join(home_root, '.vim') do
  repository 'https://github.com/lmarlow/vimfiles.git'
  enable_submodules true
  action :sync
  user node['current_user']
  group current_group
end
cookbook_file File.join(home_root, '.vimrc') do
  source 'vimrc'
  mode 0644
  owner node['current_user']
  group current_group
end
