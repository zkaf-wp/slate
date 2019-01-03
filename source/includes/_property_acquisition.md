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
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | ○ | string | 
| owner_id | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | ○ | string | 
| contract_date | <%=t('.contract_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| scheduled_payment_date | <%=t('.scheduled_payment_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| ownership_transfer_date | <%=t('.ownership_transfer_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| delivery_date | <%=t('.delivery_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| purchase_price | <%=t('.purchase_price')%> | <%=t('unit_yen')%> | × | double |
| ct_on_purchase_price | <%=t('.ct_on_purchase_price')%> | <%=t('unit_yen')%> | × | double |
| building_sale_price | <%=t('.building_sale_price')%> | <%=t('unit_yen')%> | × | double |
| ct_on_building_price | <%=t('.ct_on_building_price')%> | <%=t('unit_yen')%> | × | double |
| land_price | <%=t('.land_price')%> | <%=t('unit_yen')%> | × | double |
| earnest_money | <%=t('.earnest_money')%> | <%=t('unit_yen')%> | × | double |
| revenue_stamp_tax | <%=t('.revenue_stamp_tax')%> | <%=t('unit_yen')%> | × | double |
| registration_tax | <%=t('.registration_tax')%> | <%=t('unit_yen')%> | × | double |
| agency_fee | <%=t('.agency_fee')%> | <%=t('unit_yen')%> | × | double |
| judicial_scrivener_fee | <%=t('.judicial_scrivener_fee')%> | <%=t('unit_yen')%> | × | double |
| realestate_acquisition_tax_land | <%=t('.realestate_acquisition_tax_land')%> | <%=t('unit_yen')%> | × | double |
| realestate_acquisition_tax_house | <%=t('.realestate_acquisition_tax_house')%> | <%=t('unit_yen')%> | × | double |
| trading_shortage_fee | <%=t('.trading_shortage_fee')%> | <%=t('unit_yen')%> | × | double |
| fixed_property_tax | <%=t('.fixed_property_tax')%> | <%=t('unit_yen')%> | × | double |
| city_plan_tax | <%=t('.city_plan_tax')%> | <%=t('unit_yen')%> | × | double |
| fixed_property_tax_evaluation_amount_land | <%=t('.fixed_property_tax_evaluation_amount_land')%> | <%=t('unit_yen')%> | × | double |
| fixed_property_tax_evaluation_amount_building | <%=t('.fixed_property_tax_evaluation_amount_building')%> | <%=t('unit_yen')%> | × | double |
| depreciation | <%=t('.depreciation')%> | <%=t('unit_yen')%> | × | double |
| fire_insurance_fee | <%=t('.fire_insurance_fee')%> | <%=t('unit_yen')%> | × | double |
| earthquake_insurance_fee | <%=t('.earthquake_insurance_fee')%> | <%=t('unit_yen')%> | × | double |
| group_credit_life_insurance_fee | <%=t('.group_credit_life_insurance_fee')%> | <%=t('unit_yen')%> | × | double |
| other_insurance_fees | <%=t('.other_insurance_fee')%> | <%=t('unit_yen')%><br><%=t('max_quantity_to_x_items', quantity: 5)%> | × | double[] |
| other_insurance_fee_names | <%=t('.other_insurance_fee_name')%> | <%=t('multilingual_support')%><br><%=t('max_quantity_to_x_items', quantity: 5)%> | × | string[] |
| moving_fee | <%=t('.moving_fee')%> | <%=t('unit_yen')%> | × | double |
| furniture_cost | <%=t('.furniture_cost')%> | <%=t('unit_yen')%> | × | double |
| other_costs | <%=t('.other_cost')%> | <%=t('unit_yen')%><br><%=t('max_quantity_to_x_items', quantity: 10)%> | × | double[] |
| other_cost_names | <%=t('.other_cost_name')%> | <%=t('multilingual_support')%><br><%=t('max_quantity_to_x_items', quantity: 10)%> | × | string[] |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/properties/1/owners/1/acquisition \
     --data '
     {
       "contract_date": "2016-06-16",
       "scheduled_payment_date": "2016-06-01",
       "payment_date": "2016-06-01",
       "ownership_transfer_date": "2016-07-01",
       "delivery_date": "2016-07-15",
       "purchase_price": 50000000,
       "ct_on_purchase_price": 4000000,
       "building_sale_price": 50000000,
       "ct_on_building_price": 4000000,
       "land_price": 30000000,
       "earnest_money": 5000000,
       "revenue_stamp_tax": 10000,
       "registration_tax": 200000,
       "agency_fee": 1500000,
       "judicial_scrivener_fee": 200000,
       "realestate_acquisition_tax_land": 300000,
       "realestate_acquisition_tax_house": 350000,
       "trading_shortage_fee": 100000,
       "fixed_property_tax": 50000,
       "city_plan_tax": 70000,
       "fixed_property_tax_evaluation_amount_land": 40000,
       "fixed_property_tax_evaluation_amount_building": 10000,
       "depreciation": 1000000,
       "fire_insurance_fee": 30000,
       "earthquake_insurance_fee": 40000,
       "group_credit_life_insurance_fee": 100000,
       "other_insurance_fees": [
         10000,
         13000
       ],
       "other_insurance_fee_names": [
         {
           "ja": "盗難保険",
           "en": "theft insurance"
         },
         {
           "ja": "水漏れ保険",
           "en": "Water leakage insurance"
         }
       ],
       "moving_fee": 150000,
       "furniture_cost": 200000,
       "other_costs": [
         50000,
         40000
       ],
       "other_cost_names": [
         {
           "ja": "掃除",
           "en": "Clean up"
         },
         {
           "ja": "草刈り",
           "en": "Mow off"
         }
       ],
       "remarks": {
         "ja": "紹介手数料無料",
         "en": "Free referral fee"
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
