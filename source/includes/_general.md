<% t_scope('general_md') { %>
# <%=t('.header')%>

<% t_scope('request') { %>
## <%=t('request')%>

### <%=t('.base_url')%>

- <%=t('.production')%>: `<%= BASE_PATH %>`
- <%=t('.sandbox')%>: `<%= BASE_PATH_SANDBOX %>`

### <%=t('.action.header')%>

<%=t('.action.desc')%>

### <%=t('method')%>

| <%=t('method')%> | <%=t('description')%> |
|------------------|-----------------------|
| POST   | `UPSERT` |
| DELETE | `DELETE` |

### <%=t('.multilingual_support.header')%>

<%=t('.multilingual_support.desc1')%>

<aside class="well">{
    ...
    "remarks": {
        "ja": "備考",
        "en": "Remarks",
        "zh": "備註"
    },
    ...
}</aside>

<%=t('.multilingual_support.desc2')%>

### <%=t('.designated_parameters.header')%>

<%=t('.designated_parameters.desc') % {for_japan_market: t('for_japan_market'), for_other_countries_market: t('for_other_countries_market')} %>

### <%=t('.access_token.header')%>

<%=t('.access_token.desc')%>

```shell
curl <%= BASE_PATH %>/properties \
     <%= HEADER_ACCESS_TOKEN %>
```

### <%=t('.required_parameters.header')%>

<%=t('.required_parameters.desc')%>

<% } %>

<% t_scope('response') { %>
## <%=t('response')%>

<%= print_references('.status_code', '.status_codes', header_level: 3) %>

<%= print_references('.error_code', '.error_codes', header_level: 3) %>

### <%=t('.format.header')%>

<%=t('.format.desc')%>

> <%=t('.format.success_sample')%>

```json
{
    "err": 0,
    "field_1": "data",
    "field_2": 123,
    "field_3": {},
    ...
}
```

> <%=t('.format.failure_sample')%>

```json
{
    "err": 106,
    "err_msg": "access token is invalid"
}
```
<% } %>
<% } %>