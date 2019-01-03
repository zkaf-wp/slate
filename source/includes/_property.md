<% t_scope('property_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/properties/:property_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| property_id | <%=t('.property_id')%> | | ○ | string |
| owner_ids | <%=t('.owner_id')%> | <%=t('n_n_relationship')%> | × | string[] |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | △ | integer |
| property_type | <%=t('.property_type')%> | [<%=t('for_japan_market')%>](#<%=get_header_link(t('references'), t('.japan_property_type'))%>)<br>[<%=t('for_other_countries_market')%>](#<%=get_header_link(t('references'), t('.none_japan_property_type'))%>) | × | integer |
| ownership_type | <%=t('.ownership_type')%> | <%=t('.ownership_type_desc')%> | × | integer |
| postal_code | <%=t('.postal_code')%> | | × | string |
| prefecture | <%=t('.prefecture')%> | <%=t('multilingual_support')%> | × | string |
| city | <%=t('.city')%> | <%=t('multilingual_support')%> | × | string |
| house_number | <%=t('.house_number')%> | | × | string |
| property_name | <%=t('.property_name')%> | <%=t('multilingual_support')%> | × | string |
| address | <%=t('.address')%> | <%=t('multilingual_support')%> | × | string |
| latitude | <%=t('.latitude')%> | | × | double |
| longitude | <%=t('.longitude')%> | | × | double |
| zonings | <%=t('.zoning')%> | <%=t('.zonings_desc')%><br>[<%=t('for_japan_market')%>](#<%=get_header_link(t('references'), t('.japan_zoning'))%>)<br>[<%=t('for_other_countries_market')%>](#<%=get_header_link(t('references'), t('.none_japan_zoning'))%>) | × | integer[] |
| building_structure | [<%=t('.building_structure')%>](#<%=get_header_link(t('references'), t('.building_structure'))%>) | | × | integer |
| floors_above_ground | <%=t('.floors_above_ground')%> | <%=t('unit_floor')%> | × | integer|
| floors_under_ground | <%=t('.floors_under_ground')%> | <%=t('unit_floor')%> | × | integer |
| completion_date | <%=t('.completion_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| land_area_per_measurement | <%=t('.land_area_per_measurement')%> | <%=t('unit_m2')%> | × | double |
| land_area_per_register | <%=t('.land_area_per_register')%> | <%=t('unit_m2')%> | × | double |
| land_category | [<%=t('.land_category')%>](#<%=get_header_link(t('references'), t('.land_category'))%>) | | × | integer |
| area_classification | [<%=t('.area_classification')%>](#<%=get_header_link(t('references'), t('.area_classification'))%>) | | × | integer |
| newly_built | <%=t('.newly_built')%> | <%=t('.newly_built_desc')%> | × | bool |
| rebuilt_dates | <%=t('.rebuilt_date')%> | <%=t('format_yyyymmdd')%><br><%=t('.rebuilt_date_desc')%> | × | string[] |
| rebuilt_contents | <%=t('.rebuilt_content')%> | <%=t('multilingual_support')%><br><%=t('.rebuilt_content_desc')%> | × | string[] |
| total_units | <%=t('.total_units')%> | <%=t('.total_units_desc')%> | × | integer |
| number_of_consecutive_buildings | <%=t('.number_of_consecutive_buildings')%> | <%=t('.number_of_consecutive_buildings_desc')%>| × | integer |
| method_of_area_measurement | [<%=t('.method_of_area_measurement')%>](#<%=get_header_link(t('references'), t('.method_of_area_measurement'))%>) | | × | integer |
| building_area_per_measurement | <%=t('.building_area_per_measurement')%> | <%=t('unit_m2')%> | × | double |
| building_area_per_register | <%=t('.building_area_per_register')%> | <%=t('unit_m2')%> | × | double |
| building_coverage | <%=t('.building_coverage')%> | <%=t('.building_coverage_desc')%> | × | double |
| floor_area_ratio | <%=t('.floor_area_ratio')%> | <%=t('.floor_area_ratio_desc')%> | × | double |
| certificate_of_completion | [<%=t('.certificate_of_completion')%>](#<%=get_header_link(t('references'), t('.certificate_of_completion'))%>) | | × | integer |
| managed_by_corp | <%=t('.managed_by_corp')%> | <%=t('multilingual_support')%> | × | string |
| management_type | [<%=t('.management_type')%>](#<%=get_header_link(t('references'), t('.management_type'))%>) | | × | integer |
| managed_by_people | <%=t('.managed_by_people')%> | <%=t('multilingual_support')%> | × | string |
| management_fee | <%=t('.management_fee')%> | <%=t('.management_fee_desc')%> | × | double |
| fire_protection_specified | [<%=t('.fire_protection_specified')%>](#<%=get_header_link(t('references'), t('.fire_protection_specified'))%>) | | × | integer |
| land_right | [<%=t('.land_right')%>](#<%=get_header_link(t('references'), t('.land_right'))%>) | | × | integer |
| land_rent | <%=t('.land_rent')%> | <%=t('.land_rent_desc')%> | × | double |
| land_rent_start_date | <%=t('.land_rent_start_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| land_rent_end_date | <%=t('.land_rent_end_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

<%=t('.upsert.desc')%>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/properties/1 \
     --data '
     {
       "owner_ids": null,
       "country_id": 15,
       "property_type": 27,
       "ownership_type": 1,
       "postal_code": "1500013",
       "prefecture": {
         "ja": "東京都",
         "en": "Tokyo"
       },
       "city": {
         "ja": "渋谷区恵比寿",
         "en": "Ebisu, Shibuya-ku"
       },
       "house_number": "1-20-18",
       "property_name": {
         "ja": "三富ビル新館",
         "en": "Mitomi Building Shinkan"
       },
       "address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "latitude": 35.64658,
       "longitude": 139.712726,
       "zonings": [
         11,
         12
       ],
       "building_structure": 10,
       "floors_above_ground": 10,
       "floors_under_ground": 2,
       "completion_date": "1999-06-26",
       "land_area_per_measurement": 250.5,
       "land_area_per_register": 260.5,
       "land_category": 5,
       "area_classification": 3,
       "newly_built": true,
       "rebuilt_dates": [
         "2009-06-26",
         "2018-06-26"
       ],
       "rebuilt_contents": [
         {
           "ja": "１階リフォム",
           "en": "Reform 1st floor"
         },
         {
           "ja": "２階リフォム",
           "en": "Reform 2nd floor"
         }
       ],
       "total_units": 50,
       "number_of_consecutive_buildings": 2,
       "method_of_area_measurement": 2,
       "building_area_per_measurement": 2500.1,
       "building_area_per_register": 2600.1,
       "building_coverage": 70.1,
       "floor_area_ratio": 600,
       "certificate_of_completion": 2,
       "managed_by_corp": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "management_type": 3,
       "managed_by_people": {
         "ja": "鳥谷拓真",
         "en": "Takuma Toriya"
       },
       "management_fee": 5000,
       "fire_protection_specified": 3,
       "land_right": 3,
       "land_rent": 500000,
       "land_rent_start_date": "1999-06-26",
       "land_rent_end_date": "2020-06-26",
       "remarks": {
         "ja": "土地の権利：未記入",
         "en": "Land rights: blank"
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

- URL: `/properties/:property_id`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/properties/1 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>