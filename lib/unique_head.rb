# Unique header generation
require 'middleman-core/renderers/redcarpet'
require 'digest'

$previous_level_1_header_text = nil

class UniqueHeadCounter < Middleman::Renderers::MiddlemanRedcarpetHTML
  def initialize
    super
    @head_count = {}
  end
  def header(text, header_level)
    if header_level == 1
      friendly_text = get_header_link(text)
      $previous_level_1_header_text = text
    else
      friendly_text = get_header_link($previous_level_1_header_text, text)
    end
    @head_count[friendly_text] ||= 0
    @head_count[friendly_text] += 1
    if @head_count[friendly_text] > 1
      friendly_text += "-#{@head_count[friendly_text]}"
    end
    return "<h#{header_level} id='#{friendly_text}'>#{text}</h#{header_level}>"
  end
  def preprocess(full_document)
    full_document = super(full_document) if defined?(super)
    full_document = ERB.new(full_document).result(binding)
    return full_document
  end
end
