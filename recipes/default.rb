#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2013, Bubble
#
include_recipe "apt"

service "redis" do
  supports restart: true
end

package "redis-server"

template "/etc/redis/redis.conf" do
  source "redis.conf.erb"
  user "root"
  group "root"
  notifies :restart, "service[redis]"
end
