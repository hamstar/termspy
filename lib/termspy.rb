require 'yaml'

module Termspy
  class << self

    def config_file
      "etc/termspy.yaml"
    end

    def config
      YAML::load_file(config_file)["Termspy"]
    end

    def enabled_documents
      config[:enabled_documents]
    end

    def output_path(output)
      "lib/termspy/outputs/#{output}.rb"
    end

    def parser_path(parser)
      "lib/termspy/parsers/#{parser}.rb"
    end

    def scraper_path(document)
      "lib/termspy/scraper/#{document}.rb"
    end


  end
end
