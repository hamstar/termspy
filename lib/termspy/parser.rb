module Termspy
  class Parser
    def initialize(body)
      @body = body
    end

    def parse
      #@body = Pandoc::HTML.to_markdown(@body)
      preprocess
      postprocess
      @body
    end

    def preprocess; end
    def postprocess; end
  end
end
