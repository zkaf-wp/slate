# Cashflow

## Cashflow 's categories

- Path: `/cashflows/categories`
- Method: `POST`
- Data format: `JSON`

Overwrite list of cashflow 's categories and category-groups.

All categories and category-groups existing in request 's data but not in database will be INSERTED into database.

All categories and category-groups existing in both request 's data and database will be UPDATED in database.

All categories and category-groups existing in database but not in request 's data will be DELETED from database.

Comparison is done by using IDs.

Request 's data is in JSON format, in following structure:
<aside class="well">[
    category-group 1
        |__ category 1      <- default category of group
        |__ category 2
        |__ ...
    category-group 2
        |__ category 3      <- default category of group
        |__ ...
    ...
]</aside>

Category-group will be displayed in Potato and mobile app by its order in the JSON array.

First category of each group will become group 's default category.

***Request***

Category-group 's parameters

| Parameter         | Required? | Type    | Description                                       |
|-------------------|-----------|---------|---------------------------------------------------|
| id                | YES       | integer | Category-group 's ID                              |
| type              | YES       | integer | 0 -> expenditure <br> 1 -> income <br> 2 -> other |
| name_xx           | YES       | string  | Category-group 's name in certain language        |

Category 's parameters

| Parameter         | Required? | Type    | Description                                                       |
|-------------------|-----------|---------|-------------------------------------------------------------------|
| id                | YES       | integer | Category 's ID which is used when creating/updating cashflow data |
| type              | NO        | integer | 0 -> for tenant <br> 1 -> for owner <br> Default: 1               |
| name_xx           | YES       | string  | Category 's name in certain language                              |


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

> Sample success response

```json
{
    "err": 0
}
```

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
