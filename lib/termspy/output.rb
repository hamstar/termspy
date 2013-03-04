module Termspy
  class InvalidOutputError < StandardError; end
  class Output
    
    def save(parser); end

    def self.load(output)
      raise InvalidOutputError, "Invalid output type: #{output}" if !require Cda.output_path(output)
      "#{Termspy.camelize(output)}".new
    end
  end
end
