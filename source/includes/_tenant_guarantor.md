<% t_scope('tenant_guarantor_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/guarantor`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | ○ | string |
| name | <%=t('.name')%> | <%=t('multilingual_support')%> | × | string |
| name_furi | <%=t('.name_furi')%> | <%=t('multilingual_support')%> | × | string |
| type | <%=t('.type')%> | <%=t('.type_desc')%> | × | integer |
| relationship | <%=t('.relationship')%> | <%=t('multilingual_support')%> | × | string |
| birth_date | <%=t('.birth_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| gender | <%=t('.gender')%> | <%=t('.gender_desc')%> | × | integer |
| tel | <%=t('.tel')%> | | × | string |
| email | <%=t('.email')%> | | × | string |
| postal_code | <%=t('.postal_code')%> | | × | string |
| address | <%=t('.address')%> | <%=t('multilingual_support')%> | × | string |
| work | <%=t('.work')%> | <%=t('multilingual_support')%> | × | string |
| work_postal_code | <%=t('.work_postal_code')%> | | × | string |
| work_address | <%=t('.work_address')%> | <%=t('multilingual_support')%> | × | string |
| work_tel | <%=t('.work_tel')%> | | × | string |
| business | <%=t('.business')%> | <%=t('multilingual_support')%> | × | string |
| unit | <%=t('.unit')%> | <%=t('multilingual_support')%> | × | string |
| position | <%=t('.position')%> | <%=t('multilingual_support')%> | × | string |
| income | <%=t('.income')%> | <%=t('unit_yen')%> | × | double |
| capital | <%=t('.capital')%> | <%=t('unit_yen')%> | × | double |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/guarantor \
     --data '
     {
       "name": {
         "ja": "山田太郎",
         "en": "Tarou Yamada"
       },
       "name_furi": {
         "ja": "やまだたろう"
       },
       "type": 2,
       "relationship": {
         "ja": "父",
         "en": "Father"
       },
       "birth_date": "1958-01-01",
       "gender": 1,
       "tel": "08012345678",
       "email": "yamada.tarou@wealth-park.com",
       "postal_code": "1500013",
       "address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "work": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "work_postal_code": "1500013",
       "work_address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "work_tel": "08012345678",
       "business": {
         "ja": "不動産",
         "en": "Realestate"
       },
       "unit": {
         "ja": "開発",
         "en": "development"
       },
       "position": {
         "ja": "エンジニア",
         "en": "Engineer"
       },
       "income": 7000000,
       "capital": 462000000,
       "remarks": {
         "ja": "定年で退職した",
         "en": "Retired"
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

- URL: `/tenants/:tenant_id/guarantor`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/guarantor \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
