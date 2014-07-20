set :application, 'spree'
set :repo_url, 'https://github.com/picazoH/tbd_store2.git'
set :user, 'deploy'

set :deploy_to, '/data/spree'
set :log_level, :debug
set :linked_files, %w{config/database.yml config/newrelic.yml}
set :linked_dirs, %w{tmp/sockets log config/puma public/spree}
set :sockets_path, Pathname.new("#{fetch(:deploy_to)}/shared/tmp/sockets/")

# These puma settings are only here because capistrano-puma is borked.
# See issue #4.
set :puma_roles, :app
set :puma_socket, "unix://#{fetch(:sockets_path).join('puma_' + fetch(:application) + '.sock')}"
set :pumactl_socket, "unix://#{fetch(:sockets_path).join('pumactl_' + fetch(:application) + '.sock')}"
set :puma_state, fetch(:sockets_path).join('puma.state')
set :puma_log, -> { shared_path.join("log/puma-#{fetch(:stage )}.log") }
set :puma_flags, nil

set :bundle_flags, '--deployment'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# set :deploy_to, '/var/www/my_app'
# set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5


  namespace :deploy do
    task :restart do
      invoke 'puma:restart'
    end

    desc "Update the crontab file"
    task :update_crontab, :roles => :db do
      run "cd #{release_path} && whenever --update-crontab #{application}"
    end

  end

  #namespace :spree_sample do
  #  task :load do
  #    on roles(:app) do
  #      within release_path do
  #        ask(:confirm, "Are you sure you want to delete everything and start again? Type 'yes'")
  #        if fetch(:confirm) == "yes"
  #          execute :rake, "db:reset AUTO_ACCEPT=true"
  #          execute :rake, "spree_sample:load"
  #        end
  #      end
  #    end
  #  end
  #end

  namespace :puma do
    desc "Restart puma instance for this application"
    task :restart do
      on roles fetch(:puma_roles) do
        within release_path do
          execute :bundle, "exec pumactl -S #{fetch(:puma_state)} restart"
        end
      end
    end

    desc "Show status of puma for this application"
    task :status do
      on roles fetch(:puma_roles) do
        within release_path do
          execute :bundle, "exec pumactl -S #{fetch(:puma_state)} stats"
        end
      end
    end

    desc "Show status of puma for all applications"
    task :overview do
      on roles fetch(:puma_roles) do
        within release_path do
          execute :bundle, "exec puma status"
        end
      end
    end
  end


  after "deploy:symlink", "deploy:update_crontab"




