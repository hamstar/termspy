require 'yaml'

module Termspy
  class << self

    def config_file
      "etc/termspy.yaml"
    end

    def config
      YAML::load_file(config_file)["Termspy"]
    end

    def enabled_scrapers
      config[:enabled_scrapers]
    end

  end
end
