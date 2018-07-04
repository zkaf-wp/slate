<% t_context('general_md') { %>
# <%=t('.header')%>

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

<%=t('.multilingual_support.desc', ignore_new_line: true)%>

### <%=t('.required_parameters.header')%>

<%=t('general_md.required_parameters.desc')%>

### <%=t('.designated_parameters.header')%>

<%=t('.designated_parameters.desc') % {for_japan_market: t('for_japan_market'), for_other_countries_market: t('for_other_countries_market')} %>

### <%=t('.currency_measurement_unit_etc.header')%>

<%=t('general_md.currency_measurement_unit_etc.desc')%>


### Access-token

Set access-token to authenticate your requests. You can set it in header or inline parameters

```shell
# headers
curl <%= BASE_PATH %>/properties \
     <%= HEADER_ACCESS_TOKEN %>

# inline parameters
curl <%= BASE_PATH %>/properties?access_token=5454ac951a4e49ca9da39a6e58589393
```

## <%=t('response')%>

### Status code

| Code   | Description                          |
|--------|--------------------------------------|
| 200    | Request is processed successfully    |
| 301    | Redirected                           |
| 404    | Request 's URL is not found          |
| 500    | Server error                         |

### Error codes

| Code  | Description                       |
|-------|-----------------------------------|
| 100   | Invalid parameters                |
| 101   | Object is not found               |
| 102   | Login failed. User is blocked     |
| 103   | Login failed. User is inactive    |
| 104   | Login failed User unpublished     |
| 105   | Access-token is required          |
| 106   | Access-token expired              |
| 107   | Access-token is invalid           |
| 108   | Insuccifient priviledge           |
| 109   | Duplicated                        |

### Format

All data returned from server is in JSON format

- `err` error code. 0 means "no error"
- `field_1`, `field_2`, `field_3`, ...: returned data
- `err_msg` description of error. This message is to make it easier to understand the reason. Just for developer, don't display it on UI.


> Success

```json
{
    "err": 0,
    "field_1": "data",
    "field_2": 123,
    "field_3": {},
    ...
}
```

> Failure

```json
{
    "err": 106,
    "err_msg": "access token is invalid"
}
```
<% } %>