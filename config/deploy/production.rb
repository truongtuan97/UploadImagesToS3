set :rails_env, 'production'
set :migration_role, 'db'
 
role :app, %w{ec2-34-207-186-199.compute-1.amazonaws.com} # Server IP Address
role :web, %w{ec2-34-207-186-199.compute-1.amazonaws.com}
role :db, %w{ec2-34-207-186-199.compute-1.amazonaws.com}
 
set :ssh_options, {
keys: [File.expand_path('~/.ssh/devenv-key.pem')],
forward_agent: true,
auth_methods: %w(publickey)
}
 
server 'ec2-34-207-186-199.compute-1.amazonaws.com', user: 'ubuntu', roles: %w{web app db}