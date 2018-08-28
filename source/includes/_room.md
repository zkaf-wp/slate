<% t_scope('room_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/rooms/:room_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| room_id | <%=t('.room_id')%> | | YES | string |
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | YES | string |
| owner_ids | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | YES | string[] |
| room_number | <%=t('.room_number')%> | | NO | string |
| room_classification | <%=t('.room_classification')%> | <%=t('.room_classification_desc')%>  | NO | integer |
| room_category | [<%=t('.room_category')%>](#<%=get_header_link(t('references'), t('.room_category'))%>) | | NO | integer |
| room_category_detail | [<%=t('.room_category_detail')%>](#<%=get_header_link(t('references'), t('.room_category_detail'))%>) | | NO | integer |
| floors_located | <%=t('.floors_located')%> | | NO | integer |
| bedroom_count | <%=t('.bedroom_count')%> | <%=t('.bedroom_count_desc')%> | NO | integer |
| bathroom_count | <%=t('.bathroom_count')%> | <%=t('.bathroom_count_desc')%> | NO | integer |
| storeroom_count | <%=t('.storeroom_count')%> | | NO | integer |
| balcony_directions | [<%=t('.balcony_direction')%>](#<%=get_header_link(t('references'), t('.balcony_direction'))%>) | <%=t('max_quantity_to_x_items', quantity: 8)%> | NO | integer[] |
| balcony_area_actual_measurements | <%=t('.balcony_area_actual_measurement')%> | <%=t('max_quantity_to_x_items', quantity: 8)%><br><%=t('unit_m2')%> | NO | double[] |
| balcony_registered_areas | <%=t('.balcony_registered_area')%> | <%=t('max_quantity_to_x_items', quantity: 8)%><br><%=t('unit_m2')%> | NO | double[] |
| exclusive_area_actual_measurement | <%=t('.exclusive_area_actual_measurement')%> | <%=t('unit_m2')%> | NO | double |
| exclusive_area_registered | <%=t('.exclusive_area_registered')%> | <%=t('unit_m2')%> | NO | double |
| exclusive_garden_area_actual_measurement | <%=t('.exclusive_garden_area_actual_measurement')%> | <%=t('unit_m2')%> | NO | double |
| exclusive_garden_area_registered | <%=t('.exclusive_garden_area_registered')%> | <%=t('unit_m2')%> | NO | double |
| management_type | [<%=t('.management_type')%>](#<%=get_header_link(t('references'), t('.management_type'))%>) | | NO | integer |
| management_fee | <%=t('.management_fee')%> | <%=t('unit_yen_month')%> | NO | double |
| one_room | <%=t('.one_room')%> | <%=t('.one_room_desc')%> | NO | bool |
| floor_plan_roomcount | <%=t('.floor_plan_roomcount')%> | 1 ~ 9 | NO | integer |
| floor_plan_type | <%=t('.floor_plan_type')%>| <%=t('.floor_plan_type_desc')%> | NO | integer |
| room_floors | <%=t('.room_floor')%> | 1 ~ 9<br><%=t('max_quantity_to_x_items', quantity: 9)%> | NO | integer[] |
| room_types | [<%=t('.room_type')%>](#<%=get_header_link(t('references'), t('.room_type'))%>) | <%=t('max_quantity_to_x_items', quantity: 9)%> | NO | integer[] |
| room_areas | <%=t('.room_area')%> | <%=t('unit_m2')%><br><%=t('max_quantity_to_x_items', quantity: 9)%> | NO | double[] |
| tenant_status | [<%=t('.tenant_status')%>](#<%=get_header_link(t('references'), t('.tenant_status'))%>) | | NO | integer |
| payment_status | <%=t('.payment_status')%> | <%=t('.payment_status_desc')%> | NO | integer |
| managed_by_corp | <%=t('.managed_by_corp')%> | <%=t('multilingual_support')%> | NO | string |
| managed_by_people | <%=t('.managed_by_people')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

<%=t('room_md.upsert.desc')%>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/rooms/1 \
     --data '
     {
       "property_id": "1",
       "owner_ids": [ "1" ],
       "room_number": "103",
       "room_classification": 0,
       "room_category": 4,
       "room_category_detail": 27,
       "floors_located": 1,
       "bedroom_count": 3,
       "bathroom_count": 1,
       "storeroom_count": 2,
       "balcony_directions": [
         1,
         8
       ],
       "balcony_area_actual_measurements": [
         2,
         2
       ],
       "balcony_registered_areas": [
         1.8,
         1.8
       ],
       "exclusive_area_actual_measurement": 153.36,
       "exclusive_area_registered": 153.1,
       "exclusive_garden_area_actual_measurement": 53.36,
       "exclusive_garden_area_registered": 53.1,
       "management_type": 4,
       "management_fee": 5000,
       "one_room": false,
       "floor_plan_roomcount": 2,
       "floor_plan_type": "LDK",
       "room_floors": [
         1,
         1,
         1
       ],
       "room_types": [
         0,
         5,
         8
       ],
       "room_areas": [
         18.36,
         9.95,
         6.89
       ],
       "tenant_status": 8,
       "payment_status": 2,
       "managed_by_corp": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "managed_by_people": {
         "ja": "鳥谷拓真",
         "en": "Takuma Toriya"
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

- URL: `/rooms/:room_id`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/rooms/1 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
