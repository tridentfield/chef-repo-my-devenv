#
# Cookbook Name:: devel
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{git gcc zlib-devel openssl-devel sqlite sqlite-devel}.each do |pkg|
  package pkg do
    action :install
  end
end

