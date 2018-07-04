# <%=t('tenant_members_md.header')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/rooms/:room_id/members/:index`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_context('tenant_members_md.upsert.fields') { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | <%=t('.tenant_id_desc')%> | YES | integer |
| room_id | <%=t('.room_id')%> | | NO | integer |
| index | <%=t('.index')%> | <%=t('.index_desc')%> | YES | integer |
| age | <%=t('.age')%> | | NO | integer |
| tel | <%=t('.tel')%> | | NO | string |
| name_xx | <%=t('.name')%> | <%=t('multilingual_support')%> | NO | string |
| relationship_xx | <%=t('.relationship')%> | <%=t('multilingual_support')%> | NO | string |
| company_name_xx | <%=t('.company_name')%> | <%=t('multilingual_support')%> | NO | string |
| company_address_xx | <%=t('.company_address')%> | <%=t('multilingual_support')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/members/1 \
     --data-urlencode "age=32" \
     --data-urlencode "tel=08012345678" \
     --data-urlencode "name_ja=山田太郎" \
     --data-urlencode "name_en=Tarou Yamada" \
     --data-urlencode "relationship_ja=本人" \
     --data-urlencode "relationship_en=Self" \
     --data-urlencode "company_name_ja=WealthPark株式会社" \
     --data-urlencode "company_name_en=WealthPark, Inc." \
     --data-urlencode "company_address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "company_address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "remarks_ja=来月退去予定" \
     --data-urlencode "remarks_en=Scheduled to leave next month" \
     <%=HEADER_ACCESS_TOKEN%>
```

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/rooms/1/members/2 \
     --data-urlencode "age=24" \
     --data-urlencode "tel=08012345678" \
     --data-urlencode "name_ja=山田花子" \
     --data-urlencode "name_en=Hanako Yamada" \
     --data-urlencode "relationship_ja=妻" \
     --data-urlencode "relationship_en=Wife" \
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
- URL<%=t('delete_all')%>: `/tenants/:tenant_id/rooms/:room_id/members/all`
- <%=t('method')%>: `DELETE`

<%=t('tenant_members_md.delete.desc', ignore_new_line: true)%>

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
