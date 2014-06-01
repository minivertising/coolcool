# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
# role :app, %w{deployer@m4.mnv.kr}
# role :web, %w{deployer@m4.mnv.kr}
# role :db,  %w{deployer@m4.mnv.kr}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server '218.54.31.112', user: 'onesup', roles: %w{web app db}# , my_property: :my_value
# set :rails_env,   "production"
# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options 
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
set :ssh_options, {
  keys: %w(/Users/daul/.ssh/ids/m5.mnv.kr/onesup/id_rsa),
  forward_agent: false
  # use_agent: false
  # auth_methods: %w(password)
}
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options
