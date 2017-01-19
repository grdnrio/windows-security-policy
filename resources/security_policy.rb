resource_name :security_policy

property :template, String, required: true, default: 'C:\Windows\security\templates\chefNewPolicy.inf'
property :database, String, required: true, default: 'C:\Windows\security\database\chef.sdb'
property :log_location, String, default: 'C:\Windows\security\logs\chef-secedit.log'

action :configure do
  if node['platform'] == 'windows'
    template '#{template}' do
      source 'policy.inf.erb'
      action :create
    end

    execute 'Configure security database' do
      command "Secedit /configure /db #{database} /cfg #{template} /log #{log_location}"
      live_stream true
      action :run
    end
  end
end

action :export do
  if node['platform'] == 'windows'
    execute 'Export security database to inf file' do
      command "Secedit /export /db #{database} /cfg #{template} /log #{log_location}"
      live_stream true
      action :run
    end
  end
end

action :import do
  if node['platform'] == 'windows'
    template '#{template}' do
      source 'policy.inf.erb'
      action :create
    end

    execute 'Inport and create security database' do
      command "Secedit /import /db #{database} /cfg #{template} /log #{log_location} /overwrite"
      live_stream true
      action :run
    end
  end
end
