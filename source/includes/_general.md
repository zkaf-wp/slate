# General

## Request

### Base url

`<%= BASE_PATH %>`

### Actions

A typical API may support 5 actions for certain resource: `READ`, `CREATE`, `UPDATE`, `UPDATE PARTIALLY`, `DELETE`

This API Endpoint only support 2 actions: `UPSERT`, `DELETE`

`UPSERT` is the combination of `CREATE`, `UPDATE` and `UPDATE PARTIALLY`.

`GET` is omitted because API Endpoint is designed to import data, not to read.

### Methods

| Method | Description     |
|------- |-----------------|
| POST   | Upsert resource |
| DELETE | Delete resource |

### <%=t('multilingual_support')%>

API Endpoint supports localization of text data, by add language code after parameter 's name.

_Example:_

If we need to localize parameter `remarks` in Japanese, Enlish and Chinese, we can put 3 parameters in the request

- remarks_ja (Japanese)
- remarks_en (English)
- remarks_zh (Traditional Chinese)

### Access-token

Set access-token to authenticate your requests. You can set it in header or inline parameters

```shell
# headers
curl <%= BASE_PATH %>/properties \
     <%= HEADER_ACCESS_TOKEN %>

# inline parameters
curl <%= BASE_PATH %>/properties?access_token=5454ac951a4e49ca9da39a6e58589393
```

## Response

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
