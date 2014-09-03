module Jekyll
    class PrTag < Liquid::Block
      def render(context)
       text = super
        "<div class='problem-box'> <b> Problem: </b> #{text.strip} </div>"
      end
  end
end

Liquid::Template.register_tag('pr', Jekyll::PrTag)
