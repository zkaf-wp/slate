# <%=t('room_am_contract_md.header')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `rooms/:room_id/am_contracts/:start_date`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| room_id | <%=t('room_am_contract_md.upsert.fields.room_id')%> | | YES | integer |
| start_date | <%=t('room_am_contract_md.upsert.fields.start_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| end_date | <%=t('room_am_contract_md.upsert.fields.end_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| status | <%=t('room_am_contract_md.upsert.fields.status')%> | <%=t('room_am_contract_md.upsert.fields.status_desc')%> | YES | integer |
| payment_type | [<%=t('room_am_contract_md.upsert.fields.payment_type')%>](#<%=get_header_link(t('references'), t('room_am_contract_md.upsert.fields.payment_type'))%>) | | NO | integer |
| usage_type | <%=t('room_am_contract_md.upsert.fields.usage_type')%> | <%=t('room_am_contract_md.upsert.fields.usage_type_desc')%> | NO | integer |
| billable_without_rental_payment | <%=t('room_am_contract_md.upsert.fields.billable_without_rental_payment')%> |  <%=t('room_am_contract_md.upsert.fields.billable_without_rental_payment_desc')%> | NO | bool |
| minimum_fee_usage_self | <%=t('room_am_contract_md.upsert.fields.minimum_fee_usage_self')%> | <%=t('room_am_contract_md.upsert.fields.minimum_fee_usage_self_desc')%> | NO | double |
| minimum_fee_usage_invest | <%=t('room_am_contract_md.upsert.fields.minimum_fee_usage_invest')%> | <%=t('room_am_contract_md.upsert.fields.minimum_fee_usage_invest_desc')%> | NO | double |
| consumption_tax_rate | <%=t('room_am_contract_md.upsert.fields.consumption_tax_rate')%> | <%=t('room_am_contract_md.upsert.fields.consumption_tax_rate_desc')%> | NO | integer |
| fee_rate | <%=t('room_am_contract_md.upsert.fields.fee_rate')%> | <%=t('room_am_contract_md.upsert.fields.fee_rate_desc')%> | NO | double |
| fee | <%=t('room_am_contract_md.upsert.fields.fee')%> | <%=t('room_am_contract_md.upsert.fields.fee_desc')%> | NO | double |
| remarks_xx | <%=t('room_am_contract_md.upsert.fields.remarks')%> | <%=t('multilingual_support')%> | NO | string |

> <%=t('create')%>

```shell
curl -v -X POST <%=BASE_PATH%>/rooms/1/am_contracts/2018-06-26
     --data-urlencode "end_date=2020-06-26" \
     --data-urlencode "status=1" \
     --data-urlencode "payment_type=3" \
     --data-urlencode "usage_type=0" \
     --data-urlencode "billable_without_rental_payment=true" \
     --data-urlencode "minimum_fee_usage_self=5000" \
     --data-urlencode "minimum_fee_usage_invest=5000" \
     --data-urlencode "consumption_tax_rate=1" \
     --data-urlencode "fee_rate=6" \
     --data-urlencode "fee=10000" \
     --data-urlencode "remarks_ja=更新予定が入る" \
     --data-urlencode "remarks_en=There is intention to renew" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('update')%>

```shell
curl -v -X POST <%=BASE_PATH%>/rooms/1/am_contracts/2018-06-26
     --data-urlencode "minimum_fee_usage_self=4000" \
     --data-urlencode "minimum_fee_usage_invest=4000" \
     --data-urlencode "fee=9000" \
     --data-urlencode "remarks_ja=割引が適用済み" \
     --data-urlencode "remarks_en=Discount applied" \
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