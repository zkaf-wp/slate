<% t_scope('property_acquisition_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `properties/:property_id/owners/:owner_id/acquisition`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | YES | string | 
| owner_id | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | YES | string | 
| contract_date | <%=t('.contract_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| scheduled_payment_date | <%=t('.scheduled_payment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| ownership_transfer_date | <%=t('.ownership_transfer_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| delivery_date | <%=t('.delivery_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| purchase_price | <%=t('.purchase_price')%> | <%=t('unit_yen')%> | NO | double |
| ct_on_purchase_price | <%=t('.ct_on_purchase_price')%> | <%=t('unit_yen')%> | NO | double |
| building_sale_price | <%=t('.building_sale_price')%> | <%=t('unit_yen')%> | NO | double |
| ct_on_building_price | <%=t('.ct_on_building_price')%> | <%=t('unit_yen')%> | NO | double |
| land_price | <%=t('.land_price')%> | <%=t('unit_yen')%> | NO | double |
| earnest_money | <%=t('.earnest_money')%> | <%=t('unit_yen')%> | NO | double |
| revenue_stamp_tax | <%=t('.revenue_stamp_tax')%> | <%=t('unit_yen')%> | NO | double |
| registration_tax | <%=t('.registration_tax')%> | <%=t('unit_yen')%> | NO | double |
| agency_fee | <%=t('.agency_fee')%> | <%=t('unit_yen')%> | NO | double |
| judicial_scrivener_fee | <%=t('.judicial_scrivener_fee')%> | <%=t('unit_yen')%> | NO | double |
| realestate_acquisition_tax_land | <%=t('.realestate_acquisition_tax_land')%> | <%=t('unit_yen')%> | NO | double |
| realestate_acquisition_tax_house | <%=t('.realestate_acquisition_tax_house')%> | <%=t('unit_yen')%> | NO | double |
| trading_shortage_fee | <%=t('.trading_shortage_fee')%> | <%=t('unit_yen')%> | NO | double |
| fixed_property_tax | <%=t('.fixed_property_tax')%> | <%=t('unit_yen')%> | NO | double |
| city_plan_tax | <%=t('.city_plan_tax')%> | <%=t('unit_yen')%> | NO | double |
| fixed_property_tax_evaluation_amount_land | <%=t('.fixed_property_tax_evaluation_amount_land')%> | <%=t('unit_yen')%> | NO | double |
| fixed_property_tax_evaluation_amount_building | <%=t('.fixed_property_tax_evaluation_amount_building')%> | <%=t('unit_yen')%> | NO | double |
| depreciation | <%=t('.depreciation')%> | <%=t('unit_yen')%> | NO | double |
| fire_insurance_fee | <%=t('.fire_insurance_fee')%> | <%=t('unit_yen')%> | NO | double |
| earthquake_insurance_fee | <%=t('.earthquake_insurance_fee')%> | <%=t('unit_yen')%> | NO | double |
| group_credit_life_insurance_fee | <%=t('.group_credit_life_insurance_fee')%> | <%=t('unit_yen')%> | NO | double |
| other_insurance_fees | <%=t('.other_insurance_fee')%> | <%=t('unit_yen')%><br><%=t('max_quantity_to_x_items', quantity: 5)%> | NO | double[] |
| other_insurance_fee_names_xx | <%=t('.other_insurance_fee_name')%> | <%=t('multilingual_support')%><br><%=t('max_quantity_to_x_items', quantity: 5)%> | NO | string[] |
| moving_fee | <%=t('.moving_fee')%> | <%=t('unit_yen')%> | NO | double |
| furniture_cost | <%=t('.furniture_cost')%> | <%=t('unit_yen')%> | NO | double |
| other_costs | <%=t('.other_cost')%> | <%=t('unit_yen')%><br><%=t('max_quantity_to_x_items', quantity: 10)%> | NO | double[] |
| other_cost_names_xx | <%=t('.other_cost_name')%> | <%=t('multilingual_support')%><br><%=t('max_quantity_to_x_items', quantity: 10)%> | NO | string[] |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/properties/1/owners/1/acquisition \
     --data-urlencode "contract_date=2016-06-16" \
     --data-urlencode "scheduled_payment_date=2016-06-01" \
     --data-urlencode "payment_date=2016-06-01" \
     --data-urlencode "ownership_transfer_date=2016-07-01" \
     --data-urlencode "delivery_date=2016-07-15" \
     --data-urlencode "purchase_price=50000000" \
     --data-urlencode "ct_on_purchase_price=4000000" \
     --data-urlencode "building_sale_price=50000000" \
     --data-urlencode "ct_on_building_price=4000000" \
     --data-urlencode "land_price=30000000" \
     --data-urlencode "earnest_money=5000000" \
     --data-urlencode "revenue_stamp_tax=10000" \
     --data-urlencode "registration_tax=200000" \
     --data-urlencode "agency_fee=1500000" \
     --data-urlencode "judicial_scrivener_fee=200000" \
     --data-urlencode "realestate_acquisition_tax_land=300000" \
     --data-urlencode "realestate_acquisition_tax_house=350000" \
     --data-urlencode "trading_shortage_fee=100000" \
     --data-urlencode "fixed_property_tax=50000" \
     --data-urlencode "city_plan_tax=70000" \
     --data-urlencode "fixed_property_tax_evaluation_amount_land=40000" \
     --data-urlencode "fixed_property_tax_evaluation_amount_building=10000" \
     --data-urlencode "depreciation=1000000" \
     --data-urlencode "fire_insurance_fee=30000" \
     --data-urlencode "earthquake_insurance_fee=40000" \
     --data-urlencode "group_credit_life_insurance_fee=100000" \
     --data-urlencode "other_insurance_fees[]=10000" \
     --data-urlencode "other_insurance_fee_names_ja[]=盗難保険" \
     --data-urlencode "other_insurance_fee_names_en[]=theft insurance" \
     --data-urlencode "other_insurance_fees[]=13000" \
     --data-urlencode "other_insurance_fee_names_ja[]=水漏れ保険" \
     --data-urlencode "other_insurance_fee_names_en[]=Water leakage insurance" \
     --data-urlencode "moving_fee=150000" \
     --data-urlencode "furniture_cost=200000" \
     --data-urlencode "other_costs[]=50000" \
     --data-urlencode "other_cost_names_ja[]=掃除" \
     --data-urlencode "other_cost_names_en[]=Clean up" \
     --data-urlencode "other_costs[]=40000" \
     --data-urlencode "other_cost_names_ja[]=草刈り" \
     --data-urlencode "other_cost_names_en[]=Mow off" \
     --data-urlencode "remarks_ja=紹介手数料無料" \
     --data-urlencode "remarks_en=Free referral fee" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `properties/:property_id/owners/:owner_id/acquisition`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/properties/1/owners/1/acquisition \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
