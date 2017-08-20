set :development, :develop
#set :unicorn_rack_env, “development”
set :rails_env, 'development'
set :migration_role, 'db'
 
role :app, %w{ec2-54-173-119-66.compute-1.amazonaws.com} # Server IP Address
role :web, %w{ec2-54-173-119-66.compute-1.amazonaws.com}
role :db, %w{ec2-54-173-119-66.compute-1.amazonaws.com}
 
set :ssh_options, {
keys: [File.expand_path('~/.ssh/devenv-key.pem')],
forward_agent: true,
auth_methods: %w(publickey)
}
 
server 'ec2-54-173-119-66.compute-1.amazonaws.com', user: 'ec2-user', roles: %w{web app db}