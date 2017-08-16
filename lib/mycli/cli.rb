require "mycli/version"
require 'thor'
module Mycli

  class Hola < Thor

    desc "all", "List all backups"
    def all
      puts "Listing all"
    end

    desc "elasticruntime", "List all Elastic Runtime backups"
    def elasticruntime
      puts "Listing er"
    end
  end
end
