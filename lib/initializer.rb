require 'digest'

BASE_PATH = 'https://company-name.wealth-park.com/api/endpoint/v1'
HEADER_ACCESS_TOKEN = '-H "X-ACCESS-TOKEN: 5454ac951a4e49ca9da39a6e58589393"'

LOCALE = 'ja'
I18n.load_path = Dir["locales/#{LOCALE}.yml"]
def t(key, options={})
  options = ($t_scope_options + [options]).inject({}) {|m,o| m.merge(o)}
  if key.start_with?('.') && !$t_scope_tokens.empty?
    key = $t_scope_tokens.join('.') + key
  end
  result = I18n.translate(key, options.merge(locale: LOCALE))
  if options[:use_html_br]
    if result.include?("\n")
      result = result.gsub("\n", '<br>')
    end
  end
  result
end

$t_scope_tokens = []
$t_scope_options = []
def t_scope(token, options=nil, &block)
  if token
    $t_scope_tokens.push(token)
  end
  if options
    $t_scope_options.push(options)
  end
  result = block.call()
  if token
    $t_scope_tokens.pop()
  end
  if options
    $t_scope_options.pop()
  end
  result
end

def get_header_link(*texts)
  Digest::SHA1.hexdigest(texts.join('|'))[0,10]
end

def print_references(header_key, values_key, options={})
  header_level = options[:header_level] || 2
  (
    [
      "#{'#' * header_level} #{t(header_key)}",
      "",
      "| #{t('value')} | #{t('description')} |",
      '|----|---------------------|',
    ] +
    t(values_key)
      .inject([]) {
        |arr, pair|
        arr << "| #{pair[0]} | #{pair[1]} |"
        arr
      }
  ).join("\n")
end
