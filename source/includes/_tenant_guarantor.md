<% t_scope('tenant_guarantor_md') { %>
# <%=t('.header')%>

## <%=t('create')%> & <%=t('update')%>

<%=t('.desc')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/guarantor`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | integer |
| room_id | <%=t('.room_id')%> | | YES | integer |
| name_xx | <%=t('.name')%> | <%=t('multilingual_support')%> | NO | string |
| name_furi_xx | <%=t('.name_furi')%> | <%=t('multilingual_support')%> | NO | string |
| type | <%=t('.type')%> | <%=t('.type_desc')%> | NO | integer |
| relationship_xx | <%=t('.relationship')%> | <%=t('multilingual_support')%> | NO | string |
| birth_date | <%=t('.birth_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| gender | <%=t('.gender')%> | <%=t('.gender_desc')%> | NO | integer |
| tel | <%=t('.tel')%> | | NO | string |
| email | <%=t('.email')%> | | NO | string |
| postal_code | <%=t('.postal_code')%> | | NO | string |
| address_xx | <%=t('.address')%> | <%=t('multilingual_support')%> | NO | string |
| work_xx | <%=t('.work')%> | <%=t('multilingual_support')%> | NO | string |
| work_postal_code | <%=t('.work_postal_code')%> | | NO | string |
| work_address_xx | <%=t('.work_address')%> | <%=t('multilingual_support')%> | NO | string |
| work_tel | <%=t('.work_tel')%> | | NO | string |
| business_xx | <%=t('.business')%> | <%=t('multilingual_support')%> | NO | string |
| unit_xx | <%=t('.unit')%> | <%=t('multilingual_support')%> | NO | string |
| position_xx | <%=t('.position')%> | <%=t('multilingual_support')%> | NO | string |
| income | <%=t('.income')%> | <%=t('unit_yen')%> | NO | double |
| capital | <%=t('.capital')%> | <%=t('unit_yen')%> | NO | double |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/guarantor \
     --data-urlencode "name_ja=山田太郎" \
     --data-urlencode "name_en=Tarou Yamada" \
     --data-urlencode "name_furi_ja=やまだたろう" \
     --data-urlencode "type=0" \
     --data-urlencode "relationship_ja=父" \
     --data-urlencode "relationship_en=Father" \
     --data-urlencode "birth_date=1958-01-01" \
     --data-urlencode "gender=0" \
     --data-urlencode "tel=08012345678" \
     --data-urlencode "email=yamada.tarou@wealth-park.com" \
     --data-urlencode "postal_code=1500013" \
     --data-urlencode "address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "work_postal_code=1500013" \
     --data-urlencode "work_address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "work_address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "work_tel=08012345678" \
     --data-urlencode "business_ja=" \
     --data-urlencode "business_ja=不動産" \
     --data-urlencode "business_en=Realestate" \
     --data-urlencode "unit_ja=開発" \
     --data-urlencode "unit_en=development" \
     --data-urlencode "position_ja=エンジニア" \
     --data-urlencode "position_en=Engineer" \
     --data-urlencode "income=7000000" \
     --data-urlencode "capital=462000000" \
     --data-urlencode "remarks_ja=定年で退職した" \
     --data-urlencode "remarks_en=Retired" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/guarantor`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/rooms/1/guarantor \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
