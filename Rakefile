ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__)))
$: << File.join(ROOT_PATH, 'vimben', 'ruby')

require 'vimben'
include VimBen

desc "link ViM configuration files."
task :link_vim_conf_files do
  %w[ vimrc gvimrc ].each do |file|
    dest = expand("~/.#{file}")
    unless File.exist?(dest)
      ln_s(expand("../vimben/vim/#{file}", __FILE__), dest)
    end
  end
end


desc "Create necessary folders."
task :folders do
  VimBen::VIM.folders.each do |folder|
    mkdir_p folder
  end
end


task :install => [:folders, :link_vim_conf_files] do
  # Dummy task, real work is done with the hooks.
end


desc "Update"
task :update do
  puts "Cleaning the vimben folder"
  # `git clean -xdf -- vimben &> /dev/null`
  `git clean -xdf -- vimben`

  puts "Pulling latest changes"
  # `git pull > /dev/null`
  `git pull`

  puts "Synchronising submodules urls"
  # `git submodule sync > /dev/null`
  `git submodule sync`

  puts "Updating the submodules"
  # `git submodule update --init > /dev/null`
  `git submodule update --init`
end


desc "Install or Update VimBen."
task :default do
  sh "rake update"
  sh "rake install"
end


namespace :dev do
  desc "Update submodules"
  task :update_submodules do
    submodules.each do |submodule|
      update_submodule(submodule)
    end
  end
end
