module Termspy
  class Scraper

    def initialize

    def self.load(document)
      raise InvalidOutputError, "Invalid scraper: #{document}" if !require Cda.scraper_path(document)
      "#{Cda.camelize(document)}".new(document)
    end

    def scrape

    end
  end
end
