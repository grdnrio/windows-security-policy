#
# Cookbook Name:: windows-security-policy
# Recipe:: template
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# This recipe builds a security database template that can be imported
# using the security_policy resource.
#
# The default attributes file contains all valid settings that can be
# written to the template.
#
# Please refer to the accompanying README for more information.
#

# This template is dynamically generated from the default attributes
# file. Change a setting from nil to the desired value or nothing
# will be written. Refer to the README for more information.

template "#{node['security_policy']['template']['location']}\\mySecurityPolicy.inf" do
  source 'policy.inf.erb'
  action :create
end
