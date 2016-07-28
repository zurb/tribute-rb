require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :tribute do
  namespace :assets do
    desc 'Update Tribute.'
    task update: :clean do
      version = Tribute::VERSION.sub(/.\d+$/, '')

      sh 'git clone git@github.com:zurb/tribute.git tribute_src'
      sh "cd tribute_src && git checkout tags/#{version}"
      sh 'cp -R tribute_src/dist/tribute.css vendor/assets/stylesheets/tribute/index.css'
      sh 'cp -R tribute_src/dist/tribute.js vendor/assets/javascripts/tribute/index.js'

      puts "\n----------------------\n-- Tribute Updated! --\n----------------------\n"
    end

    desc 'Remove previous Tribute assets.'
    task :clean do
      sh 'rm -rf vendor'
      sh 'rm -rf tribute_src'
      sh 'mkdir -p vendor/assets/stylesheets/tribute/'
      sh 'mkdir -p vendor/assets/javascripts/tribute/'
    end
  end
end
