module VimBen
  # Return the root path
  #
  # @return [String] The absolute path to VimBen repository
  def root_path
    ROOT_PATH
  end

  # Return VimBen path
  #
  # @return [String] The absolute path to VimBen distribution
  def vimben_path
    File.join ROOT_PATH, 'vimben'
  end

  # Return the vim's path
  #
  # @return [String] The absolute path to ViM files
  def vim_path
    File.join vimben_path, 'vim'
  end

  # Return the ruby's path
  #
  # @return [String] The absolute path to Ruby files
  def ruby_path
    File.join vimben_path, 'ruby'
  end

  # Expand the path of a given file
  #
  # @param [Array] args
  # @return [String] The expanded path to the given file.
  def expand(*args)
    File.expand_path(*args)
  end

  # Execute a command under root
  #
  # @param [String]* commands to run
  def sudo(*args)
    if ENV["USER"] != "root"
      command = "sudo #{args.join(" ")}"
      puts "Please enter your password (if requested) for executing the command '#{command}'"
    else
      command = args.join(" ")
    end

    exec command
  end
end

# require 'vimben/errors'
# require 'vimben/git'
require 'vimben/vim'
# require 'vimben/gems'
# require 'vimben/github'
# require 'vimben/plugins'
