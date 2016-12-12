#
# Cookbook Name:: windows-security-policy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# This is a helper cookbook so nothing executes in the default recipe file.
# Please refer to the accompanying README for more information.
#

security_policy 'chefpolicy.inf' do
  action :configure
end
