module Termspy
  class Parser

    attr_reader :body, :document

    def initialize(scraper)
      @body = scraper.body
      @document = scraper.document
      @scraper = scraper
    end

    def parse
      #@body = Pandoc::HTML.to_markdown(@body)
      preprocess
      postprocess
      @body
    end

    def preprocess; end
    def postprocess; end

    def self.load(scraper)
      raise InvalidParserError, "Invalid parser type: #{scraper.document}" if !require Cda.parser_path(scraper.document)
      Parser.new(scraper)
    end
  end
end
