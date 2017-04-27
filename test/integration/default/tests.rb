# # encoding: utf-8

# Inspec test for recipe windows-security-policy::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe file('C:\Windows\security\templates\mySecurityPolicy.inf') do
  it { should exist }
  its('content') { should include '[System Access]'}
end
