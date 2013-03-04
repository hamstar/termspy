require 'pandoc'

module Termspy
  class Parser

    attr_reader :body, :document

    def parse(scraper)
      @body = scraper.body
      @document = scraper.document
      @scraper = scraper

      preprocess
      postprocess
    end

    def content(format=nil)
      return @body if format.nil?
      case format
      when :markdown
        return Pandoc::HTML.to_markdown(@body)
      end
    end

    def preprocess; end
    def postprocess; end

    def self.load(scraper)
      raise InvalidParserError, "Invalid parser type: #{scraper.document}" if !require Cda.parser_path(scraper.document)
      Parser.new(scraper)
    end
  end
end
