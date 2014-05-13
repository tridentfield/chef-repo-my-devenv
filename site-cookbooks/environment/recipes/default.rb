#
# Cookbook Name:: environment
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "change timezone" do
  code <<-EOS
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
  EOS
end


