<% t_scope('remittances_md') { %>

# <%=t('.header')%>

<% t_scope('general_remittance.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:remittance_id/owners/:owner_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| remittance_id | <%=t('.remittance_id')%> | | YES | string |
| owner_id | <%=t('.owner_id')%> | | YES | string |
| remittance_type_id | [<%=t('.remittance_type_id')%>](#<%=get_header_link(t('references'), t('remittance_type'))%>) | | YES | integer |
| month | <%=t('.month')%> | <%=t('format_yyyymm')%> | YES | string |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%>  | YES | double |
| date | <%=t('.date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| transaction_id | <%=t('.transaction_id')%> | <%=t('.transaction_id_desc')%> | NO | string |
| remarks | <%=t('.remarks')%> | NO | string |
| payee | [<%=t('payee')%>](#<%=get_header_link(t('references'), t('payer_payee.header'))%>) | | NO | string |
| payer | [<%=t('payer')%>](#<%=get_header_link(t('references'), t('payer_payee.header'))%>) | | NO | string |
| published | <%=t('.published')%> | <%=t('.published_desc')%> | YES | bool |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/remittances/1/owners/1/ \
     --data '
     {
       "remittance_types": 30,
       "month": "2018-06",
       "country": 1,
       "amount": 200000,
       "date": "2018-06-01",
       "transaction_id: "00012345",
       "remarks": "５月分の賃料",
       "payee": "owner",
       "payer": "tenant/1",
       "published": true
     }
     ' \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('general_remittance.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:remittance_id/owners/:owner_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/remittances/1/owners/1/ \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_remittance.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:remittance_id/rooms/:room_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| remittance_id | <%=t('.remittance_id')%> | | YES | string |
| room_id | <%=t('.room_id')%> | | YES | string |
| remittance_type_id | [<%=t('.remittance_type_id')%>](#<%=get_header_link(t('references'), t('remittance_type'))%>) | | YES | integer |
| month | <%=t('.month')%> | <%=t('format_yyyymm')%> | YES | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%>  | YES | double |
| date | <%=t('.date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| transaction_id | <%=t('.transaction_id')%> | <%=t('.transaction_id_desc')%> | NO | string |
| remarks | <%=t('.remarks')%> | NO | string |
| payee | [<%=t('payee')%>](#<%=get_header_link(t('references'), t('payer_payee.header'))%>) | | NO | string |
| payer | [<%=t('payer')%>](#<%=get_header_link(t('references'), t('payer_payee.header'))%>) | | NO | string |
| published | <%=t('.published')%> | <%=t('.published_desc')%> | YES | bool |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/remittances/1/rooms/1/ \
     --data '
     {
       "remittance_types": 30,
       "month": "2018-06",
       "amount": 200000,
       "date": "2018-06-01",
       "transaction_id": "00012345",
       "remarks": "５月分の賃料",
       "payee": "owner",
       "payer": "tenant/1",
       "published": true
     }
     ' \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_remittance.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/remittances/:remittance_id/rooms/:room_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/remittances/1/rooms/1/ \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% } %>
