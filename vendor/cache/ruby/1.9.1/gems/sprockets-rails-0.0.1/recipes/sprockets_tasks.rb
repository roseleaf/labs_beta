def run_sprockets_rake_task(task)
  rake = fetch(:rake, 'rake')
  rails_env = fetch(:rails_env, 'production')
  run "cd #{current_release}; #{rake} RAILS_ENV=#{rails_env} sprockets:#{task}"
end

namespace :sprockets do
  desc "Generate and install the Sprockets concatenated JavaScript file for all configuration groups"
  task :install_script, :roles => :app do
    run_sprockets_rake_task 'install_script'
  end
  
  desc "Install any assets provided by Sprockets script, for all configuration groups"
  task :install_assets, :roles => :app do
    run_sprockets_rake_task 'install_assets'
  end
end
