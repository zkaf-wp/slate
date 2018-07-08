<% t_scope('tenant_renew_md') { %>
# <%=t('.header')%>

## <%=t('create')%> & <%=t('update')%>

<%=t('.desc')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract/renews/:renewed_period_commencement_date`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | integer |
| room_id | <%=t('.room_id')%> | | YES | integer |
| status | <%=t('.status')%> | <%=t('.status_desc')%> | | YES | integer |
| renewal_fee | <%=t('.renewal_fee')%> | <%=t('unit_yen')%> | YES | double |
| renewal_administration_fee | <%=t('.renewal_administration_fee')%> | <%=t('unit_yen')%> | NO | double |
| renewal_commission_fee | <%=t('.renewal_commission_fee')%> | <%=t('unit_yen')%> | NO | double |
| application_date | <%=t('.application_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| renewed_period_commencement_date | <%=t('.renewed_period_commencement_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| renewed_period_expiry_date | <%=t('.renewed_period_expiry_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| rent | <%=t('.rent')%> | <%=t('unit_yen')%> | YES | double |
| management_fee | <%=t('.management_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| parking_fee | <%=t('.parking_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| hot_water_bill | <%=t('.hot_water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| water_bill | <%=t('.water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| internet_fee | <%=t('.internet_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| bank_charge_fee | <%=t('.bank_charge_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| sub_leasing_fee | <%=t('.sub_leasing_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee | <%=t('.others_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee_name_xx | <%=t('.others_fee_name')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
| others_fee_not_owner_income | <%=t('.others_fee_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee_name_not_owner_income_xx | <%=t('.others_fee_name_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract/renews/2018-07-01 \
     --data-urlencode "status=1" \
     --data-urlencode "renewal_fee=85000" \
     --data-urlencode "renewal_administration_fee=30000" \
     --data-urlencode "renewal_commission_fee=5000" \
     --data-urlencode "application_date=2018-06-25" \
     --data-urlencode "renewed_period_expiry_date=2020-07-01" \
     --data-urlencode "payment_date=2020-06-30" \
     --data-urlencode "rent=85000" \
     --data-urlencode "management_fee=3000" \
     --data-urlencode "parking_fee=10000" \
     --data-urlencode "hot_water_bill=3000" \
     --data-urlencode "water_bill=2800" \
     --data-urlencode "internet_fee=3500" \
     --data-urlencode "bank_charge_fee=440" \
     --data-urlencode "sub_leasing_fee=5000" \
     --data-urlencode "others_fee=1000" \
     --data-urlencode "others_fee_name_ja=バルコニー掃除" \
     --data-urlencode "others_fee_name_en=Balcony cleaning" \
     --data-urlencode "others_fee_not_owner_income=2000" \
     --data-urlencode "others_fee_not_owner_income_ja=水道品質点検" \
     --data-urlencode "others_fee_not_owner_income_en=Water quality inspection" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL<%=t('delete_one')%>: `/tenants/:tenant_id/rooms/:room_id/rental_contract/renews/:renewed_period_commencement_date`
- URL<%=t('delete_all')%>: `/tenants/:tenant_id/rooms/:room_id/rental_contract/renews/all`
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
