<% t_scope('tenant_renew_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/renews/:renewed_period_commencement_date`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | ○ | string |
| room_id | <%=t('.room_id')%> | | ○ | string |
| status | <%=t('.status')%> | <%=t('.status_desc')%> | △ | integer |
| renewal_fee | <%=t('.renewal_fee')%> | <%=t('unit_yen')%> | × | double |
| renewal_administration_fee | <%=t('.renewal_administration_fee')%> | <%=t('unit_yen')%> | × | double |
| renewal_commission_fee | <%=t('.renewal_commission_fee')%> | <%=t('unit_yen')%> | × | double |
| application_date | <%=t('.application_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| renewed_period_commencement_date | <%=t('.renewed_period_commencement_date')%> | <%=t('format_yyyymmdd')%> | ○ | string |
| renewed_period_expiry_date | <%=t('.renewed_period_expiry_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| rent | <%=t('.rent')%> | <%=t('unit_yen')%> | × | double |
| management_fee | <%=t('.management_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| parking_fee | <%=t('.parking_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| hot_water_bill | <%=t('.hot_water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| water_bill | <%=t('.water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| internet_fee | <%=t('.internet_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| bank_charge_fee | <%=t('.bank_charge_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| sub_leasing_fee | <%=t('.sub_leasing_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| others_fee | <%=t('.others_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| others_fee_name | <%=t('.others_fee_name')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | × | string |
| others_fee_not_owner_income | <%=t('.others_fee_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | × | double |
| others_fee_name_not_owner_income | <%=t('.others_fee_name_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%> (<%=t('for_japan_market')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/renews/2018-07-01 \
     --data '
     {
       "status": 1,
       "renewal_fee": 85000,
       "renewal_administration_fee": 30000,
       "renewal_commission_fee": 5000,
       "application_date": "2018-06-25",
       "renewed_period_expiry_date": "2020-07-01",
       "payment_date": "2020-06-30",
       "rent": 85000,
       "management_fee": 3000,
       "parking_fee": 10000,
       "hot_water_bill": 3000,
       "water_bill": 2800,
       "internet_fee": 3500,
       "bank_charge_fee": 440,
       "sub_leasing_fee": 5000,
       "others_fee": 1000,
       "others_fee_name": {
         "ja": "バルコニー掃除",
         "en": "Balcony cleaning"
       },
       "others_fee_not_owner_income": 2000,
       "others_fee_name_not_owner_income": {
         "ja": "水道品質点検",
         "en": "Water quality inspection"
       }
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('request')%> (<%=t('for_other_countries_market')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/renews/2018-07-01 \
     --data '
     {
       "status": 1,
       "renewal_fee": 85000,
       "renewal_administration_fee": 30000,
       "renewal_commission_fee": 5000,
       "application_date": "2018-06-25",
       "renewed_period_expiry_date": "2020-07-01",
       "payment_date": "2020-06-30",
       "rent": 85000
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

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/renews/:renewed_period_commencement_date`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/renews/2018-07-01 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
