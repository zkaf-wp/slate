<% t_scope('remittances_md') { %>

# <%=t('.header')%>

<% t_scope('general_remittance.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:gl_id/owners/:owner_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| gl_id | <%=t('.gl_id')%> | <%=t('.gl_id_desc')%> | ○ | string |
| owner_id | <%=t('.owner_id')%> | | ○ | string |
| remittance_type_id | [<%=t('.remittance_type_id')%>](#<%=get_header_link(t('references'), t('remittance_type'))%>) | | × | integer |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | △ | integer |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%>  | × | double |
| date | <%=t('.date')%> | <%=t('format_yyyymmdd')%> | × | string |
| transaction_id | <%=t('.transaction_id')%> | <%=t('.transaction_id_desc')%> | × | string |
| remarks | <%=t('.remarks')%> | | × | string |
| payee_id | <%=t('payee_id')%> | | × | string |
| payee_name | <%=t('payee_name')%> | | × | string |
| payer_id | <%=t('payer_id')%> | | × | string |
| payer_name | <%=t('payer_name')%> | | × | string |
| published | <%=t('.published')%> | <%=t('.published_desc')%> | ○ | bool |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/remittances/1/owners/1 \
     --data '
     {
       "remittance_type_id": 30,
       "country_id": 1,
       "amount": 200000,
       "date": "2018-06-01",
       "transaction_id": "00012345",
       "remarks": "５月分の賃料",
       "payee_id": "o1",
       "payee_name": "山田太郎",
       "payer_id": "t1",
       "payer_name": "佐藤太郎",
       "published": true
     }
     ' \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('general_remittance.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:gl_id/owners/:owner_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/remittances/1/owners/1 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_remittance.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:gl_id/rooms/:room_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| gl_id | <%=t('.gl_id')%> | <%=t('.gl_id_desc')%> | ○ | string |
| room_id | <%=t('.room_id')%> | | ○ | string |
| remittance_type_id | [<%=t('.remittance_type_id')%>](#<%=get_header_link(t('references'), t('remittance_type'))%>) | | × | integer |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%>  | × | double |
| date | <%=t('.date')%> | <%=t('format_yyyymmdd')%> | × | string |
| transaction_id | <%=t('.transaction_id')%> | <%=t('.transaction_id_desc')%> | × | string |
| remarks | <%=t('.remarks')%> | | × | string |
| payee_id | <%=t('payee_id')%> | | × | string |
| payee_name | <%=t('payee_name')%> | | × | string |
| payer_id | <%=t('payer_id')%> | | × | string |
| payer_name | <%=t('payer_name')%> | | × | string |
| published | <%=t('.published')%> | <%=t('.published_desc')%> | ○ | bool |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/remittances/1/rooms/1 \
     --data '
     {
       "remittance_type_id": 30,
       "amount": 200000,
       "date": "2018-06-01",
       "transaction_id": "00012345",
       "remarks": "５月分の賃料",
       "payee_id": "o1",
       "payee_name": "山田太郎",
       "payer_id": "t1",
       "payer_name": "佐藤太郎",
       "published": true
     }
     ' \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_remittance.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:gl_id/rooms/:room_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/remittances/1/rooms/1 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% } %>
