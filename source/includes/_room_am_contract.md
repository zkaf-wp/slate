<% t_scope('room_am_contract_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `rooms/:room_id/am_contracts/:start_date`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| room_id | <%=t('.room_id')%> | | YES | string |
| start_date | <%=t('.start_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| end_date | <%=t('.end_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| status | <%=t('.status')%> | <%=t('.status_desc')%> | YES | integer |
| payment_type | [<%=t('.payment_type')%>](#<%=get_header_link(t('references'), t('.payment_type'))%>) | | NO | integer |
| usage_type | <%=t('.usage_type')%> | <%=t('.usage_type_desc')%> | NO | integer |
| billable_without_rental_payment | <%=t('.billable_without_rental_payment')%> |  <%=t('.billable_without_rental_payment_desc')%> | NO | bool |
| minimum_fee_usage_self | <%=t('.minimum_fee_usage_self')%> | <%=t('.minimum_fee_usage_self_desc')%> | NO | double |
| minimum_fee_usage_invest | <%=t('.minimum_fee_usage_invest')%> | <%=t('.minimum_fee_usage_invest_desc')%> | NO | double |
| consumption_tax_rate | <%=t('.consumption_tax_rate')%> | <%=t('.consumption_tax_rate_desc')%> | NO | integer |
| fee_rate | <%=t('.fee_rate')%> | <%=t('.fee_rate_desc')%> | NO | double |
| fee | <%=t('.fee')%> | <%=t('.fee_desc')%> | NO | double |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/rooms/1/am_contracts/2018-06-26
     --data '
     {
       "end_date": "2020-06-26",
       "status": 1,
       "payment_type": 3,
       "usage_type": 1,
       "billable_without_rental_payment": true,
       "minimum_fee_usage_self": 5000,
       "minimum_fee_usage_invest": 6000,
       "consumption_tax_rate": 2,
       "fee_rate": 6,
       "fee": 10000,
       "remarks": {
         "ja": "更新予定が入る",
         "en": "There is intention to renew"
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

- URL<%=t('delete_one')%>: `rooms/:room_id/am_contracts/:start_date`
- URL<%=t('delete_all')%>: `rooms/:room_id/am_contracts/all`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/rooms/1/am_contracts/2018-06-26 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
