# <%=t('tenant_cancellation_md.header')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/cancellation`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_context('tenant_cancellation_md.upsert.fields') { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | integer |
| room_id | <%=t('.room_id')%> | | YES | integer |
| termination_notice_date | <%=t('.termination_notice_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| movingout_date | <%=t('.movingout_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| termination_date | <%=t('.termination_date')%> | <%=t('for_japan_market')%><br><%=t('format_yyyymmdd')%> | NO | string |
| invoice_date | <%=t('.invoice_date')%> | <%=t('for_japan_market')%><br><%=t('format_yyyymmdd')%> | NO | string |
| invoice_due | <%=t('.invoice_due')%> | <%=t('for_japan_market')%><br><%=t('format_yyyymmdd')%> | NO | string |
| repair_fee_tenant | <%=t('.repair_fee_tenant')%> | <%=t('unit_yen')%> | NO | double |
| proration_rent | <%=t('.proration_rent')%> | <%=t('unit_yen')%> | NO | double |
| proration_management_fee | <%=t('.proration_management_fee')%> | <%=t('unit_yen')%> | NO | double |
| proration_parking_fee | <%=t('.proration_parking_fee')%> | <%=t('unit_yen')%> | NO | double |
| proration_hot_water_fee | <%=t('.proration_hot_water_fee')%> | <%=t('unit_yen')%> | NO | double |
| proration_water_fee | <%=t('.proration_water_fee')%> | <%=t('unit_yen')%> | NO | double |
| others_fee | <%=t('.others_fee')%> | <%=t('unit_yen')%> | NO | double |
| others_fee_name_xx | <%=t('.others_fee_name')%> | <%=t('multilingual_support')%> | NO | string |
| others_fee_not_owner_income | <%=t('.others_fee_not_owner_income')%> | <%=t('unit_yen')%> | NO | double |
| others_fee_name_not_owner_income_xx | <%=t('.others_fee_name_not_owner_income')%> | <%=t('multilingual_support')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/cancellation \
     --data-urlencode "termination_notice_date=2018-06-01" \
     --data-urlencode "movingout_date=2018-06-30" \
     --data-urlencode "termination_date=2018-06-30" \
     --data-urlencode "invoice_date=2018-06-25" \
     --data-urlencode "invoice_due=2018-06-30" \
     --data-urlencode "repair_fee_tenant=90000" \
     --data-urlencode "proration_rent=44000" \
     --data-urlencode "proration_management_fee=3000" \
     --data-urlencode "proration_parking_fee=10000" \
     --data-urlencode "proration_hot_water_fee=3000" \
     --data-urlencode "proration_water_fee=2800" \
     --data-urlencode "others_fee=1000" \
     --data-urlencode "others_fee_name_ja=バルコニー掃除" \
     --data-urlencode "others_fee_name_en=Balcony cleaning" \
     --data-urlencode "others_fee_not_owner_income=2000" \
     --data-urlencode "others_fee_not_owner_income_ja=水道品質点検" \
     --data-urlencode "others_fee_not_owner_income_en=Water quality inspection" \
     --data-urlencode "remarks_ja=退去１日延長" \
     --data-urlencode "remarks_en=1 day extension for moving out" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/cancellation`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/cancellation \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
