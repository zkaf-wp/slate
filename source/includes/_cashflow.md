<% t_scope('cashflow_md') { %>
# <%=t('.header')%>

<% t_scope('categories_and_categorygroups') { %>
## <%=t('.header')%>

- URL: `/cashflows/categories`
- <%=t('method')%>: `POST`
- <%=t('.request_data_format')%>: `JSON`

<%=t('.desc1')%>
<aside class="well">[
    category-group 1
        |__ category 1      <- <%=t('.default_category_of_group')%>
        |__ category 2
        |__ ...
    category-group 2
        |__ category 3      <- <%=t('.default_category_of_group')%>
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
| type | <%=t('.fields.type')%> | <%=t('.fields.type_desc')%> | YES | integer |
| name_xx | <%=t('.fields.name')%> | <%=t('multilingual_support')%> | YES | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%= BASE_PATH %>/cashflows/categories \
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

## Cashflow for property | Upsert

- Path: `/cashflows/properties/:property_id/:category_id/:month`
- Method: `POST`

***Request***

| Parameter   | Required? | Type    | Description                                                             |
|-------------|-----------|---------|-------------------------------------------------------------------------|
| property_id | YES       | integer | <%= desc_property_id = 'Cashflow data belongs to specified property' %> |
| category_id | YES       | integer | <%= desc_category_id = 'Category of cashflow data' %>                   |
| month       | YES       | string  | <%= desc_month = 'Month of cashflow data in "yyyymm" format' %>         |
| amount      | YES       | double  | Amount of money                                                         |
| remarks_xx  | NO        | string  | Extra comment for this cashflow data in certain language                |

```shell
curl -v -X POST <%= BASE_PATH %>/cashflows/properties/100/2/201806 \
     --data-urlencode "amount=200000" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for May" \
     <%= HEADER_ACCESS_TOKEN %>
```

## Cashflow for property | Delete

- Path: `/cashflows/properties/:property_id/:category_id/:month`
- Method: `DELETE`

***Request***

| Parameter   | Required? | Type    | Description             |
|-------------|-----------|---------|-------------------------|
| property_id | YES       | integer | <%= desc_property_id %> |
| category_id | YES       | integer | <%= desc_category_id %> |
| month       | YES       | string  | <%= desc_month %>       |

```shell
curl -v -X DELETE <%= BASE_PATH %>/cashflows/properties/100/2/201806 \
     <%= HEADER_ACCESS_TOKEN %>
```

## Cashflow for room | Upsert

- Path: `/cashflows/rooms/:room_id/:category_id/:month`
- Method: `POST`

***Request***

| Parameter   | Required? | Type    | Description                                                     |
|-------------|-----------|---------|-----------------------------------------------------------------|
| room_id     | YES       | integer | <%= desc_room_id = 'Cashflow data belongs to specified room' %> |
| category_id | YES       | integer | <%= desc_category_id = 'Category of cashflow data' %>           |
| month       | YES       | string  | <%= desc_month = 'Month of cashflow data in "yyyymm" format' %> |
| amount      | YES       | double  | Amount of money                                                 |
| remarks_xx  | NO        | string  | Extra comment for this cashflow data in certain language        |

```shell
curl -v -X POST <%= BASE_PATH %>/cashflows/rooms/200/2/201806 \
     --data-urlencode "amount=200000" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for May" \
     <%= HEADER_ACCESS_TOKEN %>
```

## Cashflow for room | Delete

- Path: `/cashflows/rooms/:room_id/:category_id/:month`
- Method: `DELETE`

***Request***

| Parameter   | Required? | Type    | Description             |
|-------------|-----------|---------|-------------------------|
| room_id     | YES       | integer | <%= desc_room_id %>     |
| category_id | YES       | integer | <%= desc_category_id %> |
| month       | YES       | string  | <%= desc_month %>       |

```shell
curl -v -X DELETE <%= BASE_PATH %>/cashflows/rooms/200/2/201806 \
     <%= HEADER_ACCESS_TOKEN %>
```

## Owner 's remittances | Upsert

- Path: `/cashflows/owners/:owner_id/remittances/:remittance_type_id/:month/:country_id`
- Method: `POST`

***Request***

| Parameter          | Required? | Type    | Description                                                                                                                    |
|--------------------|-----------|---------|--------------------------------------------------------------------------------------------------------------------------------|
| owner_id           | YES       | integer | <%= desc_room_id = 'This remittance is for specified owner' %>                                                                 |
| remittance_type_id | YES       | integer | <%= desc_category_id = 'Type of remittance' %>                                                                                 |
| month              | YES       | string  | <%= desc_month = 'Month of owner remittances in "yyyymm" format' %>                                                            |
| country_id         | NO        | integer | <%= desc_country_id = 'Remittance is seperated by country.<br>If owner only has property in one country, this parameter can be blank.' %> |
| amount             | YES       | double  | Amount of money                                                                                                                |
| date               | NO        | string  | The date that remittance was transferred, in "yyyy-mm-dd" format.<br>If this parameter is blank, date is the first date of month |
| remarks_xx         | NO        | string  | Extra comment for this remittance in certain language                                                                          |

```shell
curl -v -X POST <%= BASE_PATH %>//cashflows/owners/1/remittances/4/201806/1 \
     --data-urlencode "amount=200000" \
     --data-urlencode "date=2018-06-01" \
     --data-urlencode "remarks_ja=５月分の賃料" \
     --data-urlencode "remarks_en=Rent for June" \
     <%= HEADER_ACCESS_TOKEN %>
```

## Owner 's remittances | Delete

- Path: `/cashflows/owners/:owner_id/remittances/:remittance_type_id/:month/:country_id`
- Method: `DELETE`

***Request***

| Parameter          | Required? | Type    | Description             |
|--------------------|-----------|---------|-------------------------|
| owner_id           | YES       | integer | <%= desc_room_id %>     |
| remittance_type_id | YES       | integer | <%= desc_category_id %> |
| month              | YES       | string  | <%= desc_month %>       |
| country_id         | NO        | integer | <%= desc_country_id %>  |


```shell
curl -v -X DELETE <%= BASE_PATH %>//cashflows/owners/1/remittances/4/201806/1 \
     <%= HEADER_ACCESS_TOKEN %>
```
<% } %>