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
| room_id | <%=t('.room_id')%> | | YES | integer |
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | YES | integer |
| owner_ids | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | YES | integer[] |
| room_number | <%=t('.room_number')%> | | NO | string |
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
| floor_plan | <%=t('.floor_plan')%> | | NO | file |
| floor_plan_display_name | <%=t('.floor_plan_display_name')%> | | NO | string |
| one_room | <%=t('.one_room')%> | <%=t('.one_room_desc')%> | NO | bool |
| floor_plan_roomcount | <%=t('.floor_plan_roomcount')%> | 1 ~ 9 | NO | integer |
| floor_plan_type | <%=t('.floor_plan_type')%>| <%=t('.floor_plan_type_desc')%> | NO | integer |
| room_floors | <%=t('.room_floor')%> | 1 ~ 9<br><%=t('max_quantity_to_x_items', quantity: 9)%> | NO | integer[] |
| room_types | [<%=t('.room_type')%>](#<%=get_header_link(t('references'), t('.room_type'))%>) | <%=t('max_quantity_to_x_items', quantity: 9)%> | NO | integer[] |
| room_areas | <%=t('.room_area')%> | <%=t('unit_m2')%><br><%=t('max_quantity_to_x_items', quantity: 9)%> | NO | double[] |
| tenant_status | [<%=t('.tenant_status')%>](#<%=get_header_link(t('references'), t('.tenant_status'))%>) | | NO | integer |
| payment_status | <%=t('.payment_status')%> | <%=t('.payment_status_desc')%> | NO | integer |
| managed_by_corp_xx | <%=t('.managed_by_corp')%> | <%=t('multilingual_support')%> | NO | string |
| managed_by_people_xx | <%=t('.managed_by_people')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

<%=t('room_md.upsert.desc')%>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/rooms/1 \
     --data-urlencode "property_id=1" \
     --data-urlencode "owner_ids[]=1" \
     --data-urlencode "owner_ids[]=2" \
     --data-urlencode "room_number=103" \
     --data-urlencode "room_category=0" \
     --data-urlencode "room_category_detail=0" \
     --data-urlencode "floors_located=1" \
     --data-urlencode "bedroom_count=3" \
     --data-urlencode "bathroom_count=1" \
     --data-urlencode "storeroom_count=2" \
     --data-urlencode "balcony_directions[]=5" \
     --data-urlencode "balcony_area_actual_measurements[]=2" \
     --data-urlencode "balcony_registered_areas[]=1.8" \
     --data-urlencode "balcony_directions[]=1" \
     --data-urlencode "balcony_area_actual_measurements[]=2" \
     --data-urlencode "balcony_registered_areas[]=1.8" \
     --data-urlencode "exclusive_area_actual_measurement=153.36" \
     --data-urlencode "exclusive_area_registered=153" \
     --data-urlencode "exclusive_garden_area_actual_measurement=53.36" \
     --data-urlencode "exclusive_garden_area_registered=53" \
     --data-urlencode "management_type=3" \
     --data-urlencode "management_fee=5000" \
     --data-urlencode "floor_plan=@/path/to/file/floor_plan.png" \
     --data-urlencode "floor_plan_display_name=floor_plan.png" \
     --data-urlencode "one_room=false" \
     --data-urlencode "floor_plan_roomcount=2" \
     --data-urlencode "floor_plan_type=LDK" \
     --data-urlencode "room_floors[]=1" \
     --data-urlencode "room_types[]=3" \
     --data-urlencode "room_areas[]=18.36" \
     --data-urlencode "room_floors[]=1" \
     --data-urlencode "room_types[]=0" \
     --data-urlencode "room_areas[]=9.95" \
     --data-urlencode "room_floors[]=1" \
     --data-urlencode "room_types[]=1" \
     --data-urlencode "room_areas[]=6.89" \
     --data-urlencode "tenant_status=5" \
     --data-urlencode "payment_status=1" \
     --data-urlencode "managed_by_corp_ja=WealthPark株式会社" \
     --data-urlencode "managed_by_corp_en=WealthPark, Inc." \
     --data-urlencode "managed_by_people_ja=鳥谷拓真" \
     --data-urlencode "managed_by_people_en=Takuma Toriya" \
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
