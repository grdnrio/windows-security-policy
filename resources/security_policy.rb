resource_name :security_policy
property :policy_name, String, name_property: true
property :template_path, String, default: 'C:\Windows\security\templates'
property :database_path, String, default: 'C:\Windows\security\database'
property :database, String, default: 'chef.sdb'

action :configure do
  if node['platform'] == 'windows'
    template "#{template_path}\#{policy_name}" do
      source 'policy.inf.erb'
      action :create
    end

    execute 'Import security policy #{policy_name}' do
      command "Secedit /configure /db #{database_path}\#{database} /cfg #{template_path}\#{policy_name}"
      live_stream true
      action :run
    end
  end
end
