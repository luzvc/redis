#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2013, Bubble
#
include_recipe "apt"

package "redis-server"
