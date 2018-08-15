<% t_scope('cashflow_md') { %>
# <%=t('.header')%>

<% t_scope('categories_and_categorygroups') { %>
## <%=t('.header')%>

- URL: `/pl/categories`
- <%=t('method')%>: `POST`
- <%=t('.request_data_format')%>: `JSON`

<%=t('.desc1')%>
<aside class="well">[
    <%=t('category_group')%> 1
        |__ <%=t('category')%> 1      <- <%=t('.default_category_of_group')%>
        |__ <%=t('category')%> 2
        |__ ...
    <%=t('category_group')%> 2
        |__ <%=t('category')%> 3      <- <%=t('.default_category_of_group')%>
        |__ ...
    ...
]</aside>

<%=t('.desc2')%>

***<%=t('request')%>***

<% t_scope('.request.categorygroups_s_parameters', use_html_br: true) { %>
<%=t('.header')%>

| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| id | <%=t('.fields.id')%> | | YES | integer |
| type | <%=t('.fields.type')%> | <%=t('.fields.type_desc')%> | YES | integer |
| name_xx | <%=t('.fields.name')%> | <%=t('multilingual_support')%> | YES | string |
<% } %>

<% t_scope('.request.categories_s_parameters', use_html_br: true) { %>

<%=t('.header')%>

| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| id | <%=t('.fields.id')%> | <%=t('.fields.id_desc')%>　| YES | integer |
| name_xx | <%=t('.fields.name')%> | <%=t('multilingual_support')%> | YES | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/pl/categories \
     --data '
        [
            {
                "id": 1,
                "type": 1,
                "name_ja": "賃料",
                "name_en": "Rent",
                "categories": [
                    {
                        "id": 1,
                        "name_ja": "賃料",
                        "name_en": "Rent"
                    },
                    {
                        "id": 2,
                        "name_ja": "管理費",
                        "name_en": "Management fee"
                    }
                ] 
            },
            {
                "id": 2,
                "type": 0,
                "name_ja": "仲介費",
                "name_en": "Real Estate Agent fee",
                "categories": [
                    {
                        "id": 3,
                        "name_ja": "仲介費",
                        "name_en": "Real Estate Agent fee"
                    }
                ]
            }
            
        ]
     ' \
     <%= HEADER_ACCESS_TOKEN %>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```
<% } %>

<% t_scope('property_cashflow.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/pl/properties/:property_id/transactions/:transaction_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| property_id | <%=t('.property_id')%> | | YES | string |
| transaction_id | <%=t('.transaction_id')%> | | YES | string |
| category_id | <%=t('.category_id')%> | | YES | integer |
| month | <%=t('.month')%> | <%=t('format_yyyymm')%> | YES | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%> | YES | double |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/pl/properties/100/transactions/00012345 \
     --data-urlencode "category_id=2" \
     --data-urlencode "month=2018-06" \
     --data-urlencode "payment_date=2018-05-25" \
     --data-urlencode "amount=200000" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for May" \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('property_cashflow.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/pl/properties/:property_id/transactions/:transaction_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/pl/properties/100/transactions/00012345 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_cashflow.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/pl/rooms/:room_id/transactions/:transaction_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| room_id | <%=t('.room_id')%> | | YES | string |
| transaction_id | <%=t('.transaction_id')%> | | YES | string |
| category_id | <%=t('.category_id')%> | | YES | integer |
| month | <%=t('.month')%> | <%=t('format_yyyymm')%> | YES | string |
| payment_date | <%=t('.payment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%> | YES | double |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/pl/rooms/200/transactions/00012345 \
     --data-urlencode "category_id=2" \
     --data-urlencode "month=2018-06" \
     --data-urlencode "payment_date=2018-05-25" \
     --data-urlencode "amount=200000" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for May" \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('room_cashflow.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/pl/rooms/:room_id/transactions/:transaction_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/pl/rooms/200/transactions/00012345 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('owner_remittances.upsert') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/money_transfers/owners/:owner_id/remittance_types/:remittance_type_id/month/:month/country/:country_id/transaction/:transaction_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | | YES | string |
| remittance_type_id | [<%=t('.remittance_type_id')%>](#<%=get_header_link(t('references'), t('remittance_type'))%>) | | YES | integer |
| month | <%=t('.month')%> | <%=t('format_yyyymm')%> | YES | string |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| transaction_id | <%=t('.transaction_id')%> | | YES | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%>  | YES | double |
| date | <%=t('.date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

```shell
curl -v -X POST <%= BASE_PATH %>/money_transfers/owners/1/remittance_types/4/month/2018-06/country/1/00012345 \
     --data-urlencode "amount=200000" \
     --data-urlencode "date=2018-06-01" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for June" \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% t_scope('owner_remittances.delete') { %>
## <%=t('.header')%>

<%=t('.desc')%>

- URL: `/money_transfers/owners/:owner_id/remittance_types/:remittance_type_id/month/:month/country/:country_id/transaction/:transaction_id`
- <%=t('method')%>: `DELETE`

```shell
curl -v -X DELETE <%= BASE_PATH %>/money_transfers/owners/1/remittance_types/4/month/2018-06/country/1/00012345 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>

<% } %>