require 'termspy/scraper'

module Termspy
  module Scrapers
    class RedditUserAgreement < Scraper

      def site
        :reddit
      end

      def url
        "http://reddit.com/wiki/useragreement"
      end

      def scrape

      end

    end
  end
end
