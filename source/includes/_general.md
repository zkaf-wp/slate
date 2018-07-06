<% t_scope('general_md') { %>
# <%=t('.header')%>

<% t_scope('request') { %>
## <%=t('request')%>

### <%=t('.base_url')%>

`<%= BASE_PATH %>`

### <%=t('.action.header')%>

<%=t('.action.desc')%>

### <%=t('method')%>

| <%=t('method')%> | <%=t('description')%> |
|------------------|-----------------------|
| POST   | `UPSERT` |
| DELETE | `DELETE` |

### <%=t('.multilingual_support.header')%>

<%=t('.multilingual_support.desc')%>

### <%=t('.required_parameters.header')%>

<%=t('.required_parameters.desc')%>

### <%=t('.designated_parameters.header')%>

<%=t('.designated_parameters.desc') % {for_japan_market: t('for_japan_market'), for_other_countries_market: t('for_other_countries_market')} %>

### <%=t('.currency_measurement_unit_etc.header')%>

<%=t('.currency_measurement_unit_etc.desc')%>


### <%=t('.access_token.header')%>

<%=t('.access_token.desc')%>

```shell
# <%=t('.access_token.add_to_request_header')%>
curl <%= BASE_PATH %>/properties \
     <%= HEADER_ACCESS_TOKEN %>

# <%=t('.access_token.add_to_request_parameters')%>
curl <%= BASE_PATH %>/properties?access_token=5454ac951a4e49ca9da39a6e58589393
```

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