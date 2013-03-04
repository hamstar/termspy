module Termspy
  class Scraper

    def self.load(document)
      raise InvalidOutputError, "Invalid scraper: #{document}" if !require Cda.scraper_path(document)
      "#{Cda.camelize(document)}".new
    end

    def scrape

    end

    def body

    end
  end
end
