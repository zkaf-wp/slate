require 'digest'

BASE_PATH = 'https://company-name.wealth-park.com/api/endpoint/v1'
HEADER_ACCESS_TOKEN = '-H "X-ACCESS-TOKEN: 5454ac951a4e49ca9da39a6e58589393"'

LOCALE = 'ja'
I18n.load_path = Dir["locales/#{LOCALE}.yml"]
def t(key, options={})
  if key.start_with?('.') && !$t_context_stack.empty?
    key = ($t_context_stack + [key[1..key.length]]).join('.')
  end
  result = I18n.translate(key, options.merge(locale: LOCALE))
  if result.include?("\n")
    result = result.gsub("\n", '<br>')
  end
  result
end

$t_context_stack = []
def t_context(context, &block)
  $t_context_stack << context
  result = block.call()
  $t_context_stack.delete(context)
  result
end

def get_header_link(*texts)
  Digest::SHA1.hexdigest(texts.join('|'))[0,10]
end

def get_reference_header_link(key)

end