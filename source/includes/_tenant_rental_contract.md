<% t_scope('tenant_rental_contract_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | string |
| room_id | <%=t('.room_id')%> | | YES | string |
| status | [<%=t('.status')%>](#<%=get_header_link(t('references'), t('.status'))%>) | | YES | integer |
| rent | <%=t('.rent')%> | <%=t('unit_yen')%> | YES | double |
| collection_administration_fee_enabled | <%=t('.collection_administration_fee_enabled')%> | <%=t('for_japan_market')%><br><%=t('.collection_administration_fee_enabled_desc')%> | NO | integer |
| management_fee | <%=t('.management_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| parking_fee | <%=t('.parking_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| hot_water_bill | <%=t('.hot_water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| hot_water_fee_paid_by | <%=t('.hot_water_fee_paid_by')%> | <%=t('for_japan_market')%><br><%=t('.xxx_paid_by_desc')%> | NO | integer |
| water_bill | <%=t('.water_bill')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| water_fee_paid_by | <%=t('.water_fee_paid_by')%> | <%=t('for_japan_market')%><br><%=t('.xxx_paid_by_desc')%> | NO | integer |
| internet_fee | <%=t('.internet_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| internet_fee_paid_by | <%=t('.internet_fee_paid_by')%> | <%=t('for_japan_market')%><br><%=t('.xxx_paid_by_desc')%> | NO | integer |
| bank_charge_fee | <%=t('.bank_charge_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| sub_leasing_fee | <%=t('.sub_leasing_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee | <%=t('.others_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee_name_xx | <%=t('.others_fee_name')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
| others_fee_not_owner_income | <%=t('.others_fee_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| others_fee_name_not_owner_income_xx | <%=t('.others_fee_name_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
| fees_paid_by_tenant | [<%=t('.fees_paid_by_tenant')%>](#<%=get_header_link(t('references'), t('.fee'))%>) | <%=t('for_other_countries_market')%> | NO | string[] |
| fees_paid_by_owner | [<%=t('.fees_paid_by_owner')%>](#<%=get_header_link(t('references'), t('.fee'))%>) | <%=t('for_other_countries_market')%> | NO | string[] |
| initial_fee_payment_date | <%=t('.initial_fee_payment_date')%> | <%=t('for_japan_market')%><br><%=t('format_yyyymmdd')%> | NO | string |
| initial_proration_rent | <%=t('.initial_proration_rent')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| initial_proration_management_fee | <%=t('.initial_proration_management_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| initial_proration_parking_fee | <%=t('.initial_proration_parking_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| caution_money | <%=t('.caution_money')%> | <%=t('unit_yen')%> | NO | double |
| caution_money_volume | <%=t('.caution_money_volume')%> | | NO | double |
| caution_money_manager | <%=t('.caution_money_manager')%> | <%=t('.caution_money_manager_desc')%> | NO | integer |
| caution_money_manager_other_xx | <%=t('.caution_money_manager_other')%> | <%=t('multilingual_support')%><br><%=t('.caution_money_manager_other_desc')%> | NO | string |
| key_money | <%=t('.key_money')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| key_money_volume | <%=t('.key_money_volume')%> | <%=t('for_japan_market')%> | NO | double |
| agency_fee | <%=t('.agency_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| administration_service_fee | <%=t('.administration_service_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| guarantee_commission_fee | <%=t('.guarantee_commission_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| cleaning_charges | <%=t('.cleaning_charges')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| key_exchange_fee | <%=t('.key_exchange_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| initial_others_fee | <%=t('.initial_others_fee')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| initial_others_fee_name_xx | <%=t('.initial_others_fee_name')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
| initial_others_fee_not_owner_income | <%=t('.initial_others_fee_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('unit_yen')%> | NO | double |
| initial_others_fee_name_not_owner_income_xx | <%=t('.initial_others_fee_name_not_owner_income')%> | <%=t('for_japan_market')%><br><%=t('multilingual_support')%> | NO | string |
| application_date | <%=t('.application_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| contract_date | <%=t('.contract_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| commencement_date | <%=t('.commencement_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| expiry_date | <%=t('.expiry_date')%> | <%=t('format_yyyymmdd')%> | YES | string |
| movein_planned_date | <%=t('.movein_planned_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| free_rent_start | <%=t('.free_rent_start')%> | <%=t('format_yyyymmdd')%> | NO | string |
| free_rent_end | <%=t('.free_rent_end')%> | <%=t('format_yyyymmdd')%> | NO | string |
| rent_payment_day | <%=t('.rent_payment_day')%> | 1 ~ 31 | YES | integer |
| pay_at_month_end | <%=t('.pay_at_month_end')%> | <%=t('.pay_at_month_end_desc')%> | YES | bool |
| payee_bank_name_xx | <%=t('.payee_bank_name')%> | <%=t('multilingual_support')%> | NO | string |
| account_number | <%=t('.account_number')%> | | NO | string |
| branch_number | <%=t('.branch_number')%> | | NO | string |
| account_name | <%=t('.account_name')%> | | NO | string |
| escrow_bank_account | <%=t('.escrow_bank_account')%> | <%=t('for_other_countries_market')%> | NO | string |
| escrow_bank_name_xx | <%=t('.escrow_bank_name')%> | <%=t('for_other_countries_market')%><br><%=t('multilingual_support')%> | NO | string |
| escrow_bank_address_xx | <%=t('.escrow_bank_address')%> | <%=t('for_other_countries_market')%><br><%=t('multilingual_support')%> | NO | string |
| insurance_company_xx | <%=t('.insurance_company')%> | <%=t('multilingual_support')%> | NO | string |
| insurance_policy_no | <%=t('.insurance_policy_no')%> | | NO | string |
| fire_insurance | <%=t('.fire_insurance')%> | <%=t('unit_yen')%> | NO | double |
| agent_xx | <%=t('.agent')%> | <%=t('multilingual_support')%> | NO | string |
| registered_broker_name_xx | <%=t('.registered_broker_name')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract \
     --data-urlencode "status=1" \
     --data-urlencode "rent=85000" \
     --data-urlencode "collection_administration_fee_enabled=false" \
     --data-urlencode "management_fee=3000" \
     --data-urlencode "parking_fee=10000" \
     --data-urlencode "hot_water_bill=3000" \
     --data-urlencode "hot_water_fee_paid_by=0" \
     --data-urlencode "water_bill=2800" \
     --data-urlencode "water_fee_paid_by=0" \
     --data-urlencode "internet_fee=3500" \
     --data-urlencode "internet_fee_paid_by=0" \
     --data-urlencode "bank_charge_fee=440" \
     --data-urlencode "sub_leasing_fee=5000" \
     --data-urlencode "others_fee=1000" \
     --data-urlencode "others_fee_name_ja=バルコニー掃除" \
     --data-urlencode "others_fee_name_en=Balcony cleaning" \
     --data-urlencode "others_fee_not_owner_income=2000" \
     --data-urlencode "others_fee_not_owner_income_ja=水道品質点検" \
     --data-urlencode "others_fee_not_owner_income_en=Water quality inspection" \
     --data-urlencode "initial_fee_payment_date=2017-06-25" \
     --data-urlencode "initial_proration_rent=5000" \
     --data-urlencode "initial_proration_management_fee=3000" \
     --data-urlencode "initial_proration_parking_fee=10000" \
     --data-urlencode "caution_money=90000" \
     --data-urlencode "caution_money_volume=1" \
     --data-urlencode "caution_money_manager=0" \
     --data-urlencode "key_money=85000" \
     --data-urlencode "key_money_volume=1" \
     --data-urlencode "agency_fee=45000" \
     --data-urlencode "administration_service_fee=5000" \
     --data-urlencode "guarantee_commission_fee=20000" \
     --data-urlencode "cleaning_charges=0" \
     --data-urlencode "key_exchange_fee=16000" \
     --data-urlencode "initial_others_fee=2000" \
     --data-urlencode "initial_others_fee_name_ja=玄関電球交換" \
     --data-urlencode "initial_others_fee_name_en=Entrance bulb replacement" \
     --data-urlencode "initial_others_fee_not_owner_income=2000" \
     --data-urlencode "initial_others_fee_name_not_owner_income_ja=部屋訪問配車料金" \
     --data-urlencode "initial_others_fee_name_not_owner_income_en=Room visit dispatch fee" \
     --data-urlencode "application_date=2017-05-25" \
     --data-urlencode "contract_date=2017-05-25" \
     --data-urlencode "commencement_date=2017-06-25" \
     --data-urlencode "expiry_date=2019-06-25" \
     --data-urlencode "movein_planned_date=2017-06-26" \
     --data-urlencode "free_rent_start=2017-06-26" \
     --data-urlencode "free_rent_end=2017-06-30" \
     --data-urlencode "rent_payment_day=25" \
     --data-urlencode "pay_at_month_end=false" \
     --data-urlencode "payee_bank_name_ja=完璧銀行" \
     --data-urlencode "payee_bank_name_en=Perfect Bank" \
     --data-urlencode "account_number=483989854985" \
     --data-urlencode "branch_number=824" \
     --data-urlencode "account_name=Tarou Yamada" \
     --data-urlencode "insurance_company_ja=すばらし保険" \
     --data-urlencode "insurance_company_en=Subarashi Insurance" \
     --data-urlencode "insurance_policy_no=9875787854" \
     --data-urlencode "fire_insurance=20000" \
     --data-urlencode "agent_ja=A社" \
     --data-urlencode "agent_en=Company A" \
     --data-urlencode "registered_broker_name_ja=鳥谷拓真" \
     --data-urlencode "registered_broker_name_en=Takuma Toriya" \
     <%=HEADER_ACCESS_TOKEN%>
```

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/2/rooms/2/rental_contract \
     --data-urlencode "fees_paid_by_tenant[]=gas" \
     --data-urlencode "fees_paid_by_tenant[]=electric" \
     --data-urlencode "fees_paid_by_tenant[]=water" \
     --data-urlencode "fees_paid_by_owner[]=trash_disposal" \
     --data-urlencode "fees_paid_by_owner[]=other" \
     --data-urlencode "escrow_bank_account=8402803" \
     --data-urlencode "escrow_bank_name_en=Escrow Agent" \
     --data-urlencode "escrow_bank_address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/rental_contract`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/rooms/1/rental_contract \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
