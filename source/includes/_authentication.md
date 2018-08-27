<% t_scope('authentication_md') { %>
# <%=t('.header')%>

## <%=t('.login.header')%>

***<%=t('request')%>***

- URL: `/login`
- <%=t('method')%>: `POST`
<% t_scope(nil, use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|--------------------|---------------------|
| email | <%=t('.login.request.fields.email')%> | YES | string |
| password | <%=t('.login.request.fields.password')%> | YES | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/login \
     --data-urlencode "email=admin@wealth-park.com" \
     --data-urlencode "password=Password123" \
```

***<%=t('response')%>***
<% t_scope('.login.response.fields', use_html_br: true) { %>
| <%=t('field')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('data_form')%> |
|-----------------|----------------|-------------------|---------------------|
| access_token | <%=t('.access_token')%> | <%=t('.access_token_desc')%> | string |
| expire_at | <%=t('.expire_at')%> | <%=t('.expire_at_desc')%> | integer |
| refresh_token | <%=t('.refresh_token')%> | <%=t('.refresh_token_desc')%> | string |
| priviledge | <%=t('.priviledge')%> | <%=t('.priviledge_desc')%> | string |
| unique_id | <%=t('.unique_id')%> | | integer |
<% } %>

> <%=t('response')%>

```json
{
    "err": 0,
    "access_token": "108210a14e204b15aa473443d8af60e5",
    "expire_at": 1453985777,
    "refresh_token": "5f07eea1bfb641dd807cdf90bbba8761",
    "priviledge": "standard",
    "unique_id": 100
}
```

## <%=t('.refresh_access_token.header')%>

***<%=t('request')%>***

- URL: `/refresh_access_token`
- <%=t('method')%>: `POST`

<% t_scope(nil, use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|--------------------|---------------------|
| refresh_token | <%=t('.refresh_access_token.request.fields.refresh_token')%> | <%=t('.refresh_access_token.request.fields.refresh_token_desc')%> | YES | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/refresh_access_token \
     --data-urlencode "refresh_token=5f07eea1bfb641dd807cdf90bbba8761"
```

***<%=t('response')%>***
<% t_scope('.refresh_access_token.response.fields', use_html_br: true) { %>
| <%=t('field')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('data_form')%> |
|-----------------|----------------|-------------------|---------------------|
| access_token | <%=t('.access_token')%> | <%=t('.access_token_desc')%> | string |
| expire_at | <%=t('.expire_at')%> | | integer |
| refresh_token | <%=t('.refresh_token')%> | <%=t('.refresh_token_desc')%> | string |
<% } %>

> <%=t('response')%>

```json
{
    "err": 0,
    "access_token": "108210a14e204b15aa473443d8af60e5",
    "expire_at": 1453985777,
    "refresh_token": "5f07eea1bfb641dd807cdf90bbba8761",
}
```
<% } %>
