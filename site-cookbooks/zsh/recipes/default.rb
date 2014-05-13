#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'zsh' do
  action :install
end

git '/home/vagrant/.oh-my-zsh' do
  repository 'git://github.com/robbyrussell/oh-my-zsh.git'
  reference 'master'
  action :checkout
  user 'vagrant'
  group 'vagrant'
end

template '.zshrc' do
  path '/home/vagrant/.zshrc'
  source 'zshrc.erb'
  owner 'vagrant'
  group 'vagrant'
  mode 0644
end

bash 'chsh' do
  code <<-EOS
    chsh -s /bin/zsh vagrant
  EOS
end

