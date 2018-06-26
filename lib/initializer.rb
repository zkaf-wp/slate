BASE_PATH = 'https://company-name.wealth-park.com/api/endpoint/v1'
HEADER_ACCESS_TOKEN = '-H "X-ACCESS-TOKEN: 5454ac951a4e49ca9da39a6e58589393"'

LOCALE = 'ja'
I18n.load_path = Dir["locales/#{LOCALE}.yml"]
def t(key)
  result = I18n.translate(key, locale: LOCALE)
  if result.is_a?(Array)
    result = result.join('<br>')
  end
  result
end