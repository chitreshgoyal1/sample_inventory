set :application, "inventory"
set :repository,  "git@github.com:3nikm4/inventory.git"
set :deploy_to, "~/sites/current/#{application}"

set :scm, "git"
set :branch, "master"

set :user, "rmddx"


role :app, "10.0.1.6:22"
role :web, "10.0.1.6:22"
role :db, "10.0.1.6:22", :primary => true


# if you're still using the script/reaper helper you will need # these http://github.com/rails/irs_process_scripts 

namespace :deploy do

  desc "Restarting Passenger with restart.txt" 
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end

end
