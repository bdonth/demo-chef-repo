#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package "httpd" do
   action :install
end

service "httpd" do
   action [ :enable, :start]
end

cookbook_file "/var/www/html/index.html" do
   source "index.html"
end










