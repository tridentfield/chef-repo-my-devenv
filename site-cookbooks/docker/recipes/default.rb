#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'docker-io' do
  action :install
end

bash 'docker setup' do
  code <<-EOS
    sudo service docker start
    sudo chkconfig docker on
    sudo docker pull centos:latest
    sudo docker images centos
  EOS
end

