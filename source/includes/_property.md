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
| property_id | <%=t('.property_id')%> | | YES | string |
| owner_ids | <%=t('.owner_id')%> | <%=t('n_n_relationship')%> | NO | string[] |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| property_type | [<%=t('.property_type')%>](#<%=get_header_link(t('references'), t('.property_type'))%>) | | NO | integer |
| ownership_type | [<%=t('.ownership_type')%>](#<%=get_header_link(t('references'), t('.ownership_type'))%>) | | NO | integer |
| postal_code | <%=t('.postal_code')%> | | YES | string |
| prefecture_xx | <%=t('.prefecture')%> | <%=t('multilingual_support')%> | YES | string |
| city_xx | <%=t('.city')%> | <%=t('multilingual_support')%> | YES | string |
| house_number | <%=t('.house_number')%> | | YES | string |
| property_name_xx | <%=t('.property_name')%> | <%=t('multilingual_support')%> | YES | string |
| address_xx | <%=t('.address')%> | <%=t('multilingual_support')%> | YES | string |
| latitude | <%=t('.latitude')%> | | NO | double |
| longitude | <%=t('.longitude')%> | | NO | double |
| zonings | [<%=t('.zoning')%>](#<%=get_header_link(t('references'), t('.zoning'))%>) | <%=t('.zonings_desc')%>| NO | integer[] |
| building_structure | [<%=t('.building_structure')%>](#<%=get_header_link(t('references'), t('.building_structure'))%>) | | NO | integer |
| floors_above_ground | <%=t('.floors_above_ground')%> | <%=t('.floors_xxx_ground_desc')%>| NO | integer|
| floors_under_ground | <%=t('.floors_under_ground')%> | | NO | integer |
| completion_date | <%=t('.completion_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| land_area_per_measurement | <%=t('.land_area_per_measurement')%> | <%=t('unit_m2')%> | NO | double |
| land_area_per_register | <%=t('.land_area_per_register')%> | <%=t('unit_m2')%> | NO | double |
| land_category | [<%=t('.land_category')%>](#<%=get_header_link(t('references'), t('.land_category'))%>) | | NO | integer |
| area_classification | [<%=t('.area_classification')%>](#<%=get_header_link(t('references'), t('.area_classification'))%>) | | NO | integer |
| newly_built | <%=t('.newly_built')%> | <%=t('.newly_built_desc')%> | NO | bool |
| rebuilt_dates | <%=t('.rebuilt_date')%> | <%=t('format_yyyymmdd')%><br><%=t('.rebuilt_date_desc')%> | NO | string[] |
| rebuilt_contents_xx | <%=t('.rebuilt_content')%> | <%=t('multilingual_support')%><br><%=t('.rebuilt_content_desc')%> | NO | string[] |
| total_units | <%=t('.total_units')%> | <%=t('.total_units_desc')%> | NO | integer |
| number_of_consecutive_buildings | <%=t('.number_of_consecutive_buildings')%> | <%=t('.number_of_consecutive_buildings_desc')%>| NO | integer |
| method_of_area_measurement | [<%=t('.method_of_area_measurement')%>](#<%=get_header_link(t('references'), t('.method_of_area_measurement'))%>) | | NO | integer |
| building_area_per_measurement | <%=t('.building_area_per_measurement')%> | <%=t('unit_m2')%> | NO | double |
| building_area_per_register | <%=t('.building_area_per_register')%> | <%=t('unit_m2')%> | NO | double |
| building_coverage | <%=t('.building_coverage')%> | <%=t('.building_coverage_desc')%> | NO | double |
| floor_area_ratio | <%=t('.floor_area_ratio')%> | <%=t('.floor_area_ratio_desc')%> | NO | double |
| certificate_of_completion | [<%=t('.certificate_of_completion')%>](#<%=get_header_link(t('references'), t('.certificate_of_completion'))%>) | | NO | integer |
| managed_by_corp_xx | <%=t('.managed_by_corp')%> | <%=t('multilingual_support')%> | NO | string |
| management_type | [<%=t('.management_type')%>](#<%=get_header_link(t('references'), t('.management_type'))%>) | | NO | integer |
| managed_by_people_xx | <%=t('.managed_by_people')%> | <%=t('multilingual_support')%> | NO | string |
| management_fee | <%=t('.management_fee')%> | <%=t('.management_fee_desc')%> | NO | double |
| fire_protection_specified | [<%=t('.fire_protection_specified')%>](#<%=get_header_link(t('references'), t('.fire_protection_specified'))%>) | | NO | integer |
| land_right | [<%=t('.land_right')%>](#<%=get_header_link(t('references'), t('.land_right'))%>) | | NO | integer |
| land_rent | <%=t('.land_rent')%> | <%=t('.land_rent_desc')%> | NO | double |
| land_rent_start_date | <%=t('.land_rent_start_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| land_rent_end_date | <%=t('.land_rent_end_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

<%=t('.upsert.desc')%>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/properties/1 \
     --data-urlencode "owner_ids[]=1" \
     --data-urlencode "owner_ids[]=2" \
     --data-urlencode "country_id=1" \
     --data-urlencode "property_type=0" \
     --data-urlencode "ownership_type=1" \
     --data-urlencode "postal_code=1500013" \
     --data-urlencode "prefecture_ja=東京都" \
     --data-urlencode "prefecture_en=Tokyo" \
     --data-urlencode "city_ja=渋谷区恵比寿" \
     --data-urlencode "city_en=Ebisu, Shibuya-ku" \
     --data-urlencode "house_number=1-20-18" \
     --data-urlencode "property_name_ja=三富ビル新館" \
     --data-urlencode "property_name_en=Mitomi Building Shinkan" \
     --data-urlencode "address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "latitude=35.646580" \
     --data-urlencode "longitude=139.712726" \
     --data-urlencode "zonings[]=3" \
     --data-urlencode "zonings[]=4" \
     --data-urlencode "building_structure=5" \
     --data-urlencode "floors_above_ground=10" \
     --data-urlencode "floors_under_ground:2" \
     --data-urlencode "completion_date:1999-06-26" \
     --data-urlencode "land_area_per_measurement=250.5" \
     --data-urlencode "land_area_per_register=260.5" \
     --data-urlencode "land_category=0" \
     --data-urlencode "area_classification=0" \
     --data-urlencode "newly_built=false" \
     --data-urlencode "rebuilt_dates[]=2009-06-26" \
     --data-urlencode "rebuilt_dates[]=2018-06-26" \
     --data-urlencode "rebuilt_contents_ja[]=１階リフォム" \
     --data-urlencode "rebuilt_contents_ja[]=２階リフォム" \
     --data-urlencode "rebuilt_contents_en[]=Reform 1st floor" \
     --data-urlencode "rebuilt_contents_en[]=Reform 2nd floor" \
     --data-urlencode "total_units=50" \
     --data-urlencode "number_of_consecutive_buildings=2" \
     --data-urlencode "method_of_area_measurement=1" \
     --data-urlencode "building_area_per_measurement=2500" \
     --data-urlencode "building_area_per_register=2600" \
     --data-urlencode "building_area_per_register=70" \
     --data-urlencode "floor_area_ratio=600" \
     --data-urlencode "certificate_of_completion=1" \
     --data-urlencode "managed_by_corp_ja=WealthPark株式会社" \
     --data-urlencode "managed_by_corp_en=WealthPark, Inc." \
     --data-urlencode "management_type=3" \
     --data-urlencode "managed_by_people_ja=鳥谷拓真" \
     --data-urlencode "managed_by_people_en=Takuma Toriya" \
     --data-urlencode "management_fee=5000" \
     --data-urlencode "fire_protection_specified=1" \
     --data-urlencode "land_right=0" \
     --data-urlencode "land_rent=500000" \
     --data-urlencode "land_rent_start_date=1999-06-26" \
     --data-urlencode "land_rent_end_date=2020-06-26" \
     --data-urlencode "remarks_ja=土地の権利：未記入" \
     --data-urlencode "remarks_en=Land rights: blank" \
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