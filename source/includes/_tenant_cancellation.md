<% t_scope('tenant_cancellation_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/cancellation`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | string |
| room_id | <%=t('.room_id')%> | | YES | string |
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
| others_fee_name | <%=t('.others_fee_name')%> | <%=t('multilingual_support')%> | NO | string |
| others_fee_not_owner_income | <%=t('.others_fee_not_owner_income')%> | <%=t('unit_yen')%> | NO | double |
| others_fee_name_not_owner_income | <%=t('.others_fee_name_not_owner_income')%> | <%=t('multilingual_support')%> | NO | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%> (<%=t('for_japan_market')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/cancellation \
     --data '
     {
       "termination_notice_date": "2018-06-01",
       "movingout_date": "2018-06-30",
       "termination_date": "2018-06-30",
       "invoice_date": "2018-06-25",
       "invoice_due": "2018-06-30",
       "repair_fee_tenant": 90000,
       "proration_rent": 44000,
       "proration_management_fee": 3000,
       "proration_parking_fee": 10000,
       "proration_hot_water_fee": 3000,
       "proration_water_fee": 2800,
       "others_fee": 1000,
       "others_fee_name": {
         "ja": "バルコニー掃除",
         "en": "Balcony cleaning"
       },
       "others_fee_not_owner_income": 2000,
       "others_fee_name_not_owner_income": {
         "ja": "水道品質点検",
         "en": "Water quality inspection"
       },
       "remarks": {
         "ja": "退去１日延長",
         "en": "1 day extension for moving out"
       },
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('request')%> (<%=t('for_other_countries_market')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/cancellation \
     --data '
     {
       "termination_notice_date": "2018-06-01",
       "movingout_date": "2018-06-30",
       "repair_fee_tenant": 90000,
       "proration_rent": 44000,
       "proration_management_fee": 3000,
       "proration_parking_fee": 10000,
       "proration_hot_water_fee": 3000,
       "proration_water_fee": 2800,
       "others_fee": 1000,
       "others_fee_name": {
         "ja": "バルコニー掃除",
         "en": "Balcony cleaning"
       },
       "others_fee_not_owner_income": 2000,
       "others_fee_name_not_owner_income": {
         "ja": "水道品質点検",
         "en": "Water quality inspection"
       },
       "remarks": {
         "ja": "退去１日延長",
         "en": "1 day extension for moving out"
       },
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
<% } %>
