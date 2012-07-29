set :application, "miio.info"
set :repository,  "git://github.com/miio/miio.info.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "miio.info"                          # Your HTTP server, Apache/etc

set :deploy_to, "/virtual/#{application}"

set :git_enable_submodules, 1

# if you want to clean up old releases on each deploy uncomment this:# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
	task :start do
		send(run_method, "sudo /etc/init.d/apache2 reload")    end
end
