<% t_scope('owner_bank_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id/bank`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | <%=t('one_one_relationship')%> | YES | string |
| bank_country_id | [<%=t('.bank_country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | NO | integer
| bank_code | <%=t('.bank_code')%> | | NO | string |
| branch_code | <%=t('.branch_code')%> | | NO | string |
| bank_swift | <%=t('.bank_swift')%> | | NO | string |
| bank_currency | <%=t('.bank_currency')%> | <%=t('.bank_currency_desc')%> | NO | string |
| bank_account_type | <%=t('.bank_account_type')%> | <%=t('.bank_account_type_desc')%> | NO | integer |
| account_type | <%=t('.account_type')%> | <%=t('.account_type_desc')%> | NO | string |
| account_number | <%=t('.account_number')%> | | NO | string |
| name | <%=t('.name')%> | <%=t('multilingual_support')%> | NO | string |
| address | <%=t('.address')%> | <%=t('multilingual_support')%> | NO | string |
| branch_name | <%=t('.branch_name')%> | <%=t('multilingual_support')%> | NO | string |
| account_holder | <%=t('.account_holder')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1/bank \
     --data '
     {
       "bank_country_id": 15,
       "bank_code": "0002",
       "branch_code": "814",
       "bank_swift": "MHCBJPJT",
       "bank_currency": "JPY",
       "bank_account_type": 1,
       "account_type": 1,
       "account_number": "1234567",
       "name": {
         "ja": "完璧銀行",
         "en": "Perfect Bank"
       },
       "address": {
         "ja": "北海道札幌市中央区北三条西3-1",
         "en": "3-1 Kitasanjo Nishi, Chuo-ku, Sapporo-shi, Hokkaido"
       },
       "branch_name": {
         "ja": "札幌支店",
         "en": "SAPPORO"
       },
       "account_holder": {
         "ja": "山田太郎",
         "en": "Tarou Yamada"
       }
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/owners/:owner_id/bank`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/owners/1/bank \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
