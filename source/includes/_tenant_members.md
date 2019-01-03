<% t_scope('tenant_members_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/members/:index`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | <%=t('.tenant_id_desc')%> | ○ | string |
| room_id | <%=t('.room_id')%> | | ○ | string |
| index | <%=t('.index')%> | <%=t('.index_desc')%> | ○ | integer |
| age | <%=t('.age')%> | | × | integer |
| tel | <%=t('.tel')%> | | × | string |
| name | <%=t('.name')%> | <%=t('multilingual_support')%> | × | string |
| relationship | <%=t('.relationship')%> | <%=t('multilingual_support')%> | × | string |
| company_name | <%=t('.company_name')%> | <%=t('multilingual_support')%> | × | string |
| company_address | <%=t('.company_address')%> | <%=t('multilingual_support')%> | × | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/members/1 \
     --data '
     {
       "age": 32,
       "tel": "08012345678",
       "name": {
         "ja": "山田太郎",
         "en": "Tarou Yamada"
       },
       "relationship": {
         "ja": "本人",
         "en": "Self"
       },
       "company_name": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "company_address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "remarks": {
         "ja": "来月退去予定",
         "en": "Scheduled to leave next month"
       }
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/members/2 \
     --data '
     {
       "age": 24,
       "tel": "08012345678",
       "name": {
         "ja": "山田花子",
         "en": "Hanako Yamada"
       },
       "relationship": {
         "ja": "妻",
         "en": "Wife"
       },
       "company_name": null,
       "company_address": null,
       "remarks": null
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

- URL<%=t('delete_one')%>: `/tenants/:tenant_id/rooms/:room_id/members/:index`
- URL<%=t('delete_all')%>: `/tenants/:tenant_id/rooms/:room_id/members`
- <%=t('method')%>: `DELETE`

<%=t('.delete.desc')%>

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/rooms/1/members/2 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
