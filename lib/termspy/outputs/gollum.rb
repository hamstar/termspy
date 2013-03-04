require 'gollum'

module Termspy
  module Output
    module Gollum

      def save(parser)
        g = Gollum.wiki( Cda.outputs[:gollum] )
	p = g.page parser.title
	p.content = parser.markdown
	p.save
      end

    end
  end
end
