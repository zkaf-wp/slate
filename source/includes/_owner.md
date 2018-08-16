<% t_scope('owner_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | | YES | string |
| corp_flag   | <%=t('.corp_flag')%> | <%=t('.corp_flag_desc')%> | YES | integer |
| nationality_country_id | [<%=t('.nationality_country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| residence_country_id | [<%=t('.residence_country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| last_name | <%=t('.last_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | YES | string |
| first_name | <%=t('.first_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | YES | string |
| last_name_furi | <%=t('.last_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| first_name_furi | <%=t('.first_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| name | <%=t('.name')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| name_furi | <%=t('.name_furi')%> |  <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| admin_name | <%=t('.admin_name')%> | <%=t('multilingual_support')%> | NO | string |
| admin_tel | <%=t('.admin_tel')%> | | NO | string |
| gender | <%=t('.gender')%> | <%=t('individual_field')%><br><%=t('.gender_desc')%> | NO | integer |
| tel | <%=t('.tel')%> | | NO | string |
| spare_phone_number | <%=t('.spare_phone_number')%> | | NO | string |
| birth_date | <%=t('.birth_date')%> | <%=t('individual_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| establishment_date | <%=t('.establishment_date')%> | <%=t('corporation_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| social_security_number | <%=t('.social_security_number')%> | | NO | string |
| taxpayer_number | <%=t('.taxpayer_number')%> | | NO | string |
| postal_code | <%=t('.postal_code')%> | | NO | string
| prefecture | <%=t('.prefecture')%> | <%=t('multilingual_support')%> | NO | string |
| city | <%=t('.city')%> | <%=t('multilingual_support')%> | NO | string |
| land_lot_no | <%=t('.land_lot_no')%> | | NO | string |
| building_name | <%=t('.building_name')%> | <%=t('multilingual_support')%> | NO | string |
| address | <%=t('.address')%> | <%=t('multilingual_support')%> | NO | string |
| mailing_country | [<%=t('.mailing_country')%>](#<%=get_header_link(t('references'), t('country'))%>) | | NO | integer |
| mailing_postal_code | <%=t('.mailing_postal_code')%> | | NO | string |
| mailing_building_name | <%=t('.mailing_building_name')%> | <%=t('multilingual_support')%> | NO | string |
| mailing_tel | <%=t('.mailing_tel')%> | | NO | string |
| mailing_address | <%=t('.mailing_address')%> | <%=t('multilingual_support')%> | NO | string |
| email | <%=t('.email')%> | | NO | string |
| remittance_months | <%=t('.remittance_month')%> | 1 ~ 12 | NO | integer[] |
| remittance_date | <%=t('.remittance_date')%> | 1 ~ 31 | NO | integer |
| pay_at_month_end | <%=t('.pay_at_month_end')%> | true/false | NO | bool |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%> (<%=t('individual_field')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1
     --data '
     {
       "corp_flag": 1,
       "nationality_country_id": 1,
       "residence_country_id": 5,
       "last_name": {
         "ja": "山田",
         "en": "Yamada"
       },
       "first_name": {
         "ja": "太郎",
         "en": "Tarou"
       },
       "last_name_furi": {
         "ja": "やまだ"
       },
       "first_name_furi": {
         "ja": "たろう"
       },
       "admin_name": {
         "ja": "鳥谷拓真",
         "en": "Takuma Toriya"
       },
       "admin_tel": "0312345678",
       "gender": 1,
       "tel": "08012345678",
       "spare_phone_number": "07012345678",
       "birth_date": "1986-01-01",
       "social_security_number": "7489103845748574",
       "taxpayer_number": "13800754785478",
       "postal_code": "1500013",
       "prefecture": {
         "ja": "東京都",
         "en": "Tokyo"
       },
       "city": {
         "ja": "渋谷区恵比寿",
         "en": "Ebisu, Shibuya-ku"
       },
       "land_lot_no": "1-20-18",
       "building_name": {
         "ja": "三富ビル新館",
         "en": "Mitomi Building Shinkan"
       },
       "address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "mailing_country": 1,
       "mailing_postal_code": "1500013",
       "mailing_building_name": {
         "ja": "三富ビル新館",
         "en": "Mitomi Building Shinkan"
       },
       "mailing_tel": "08012345678",
       "mailing_address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館3階",
         "en": "3nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "email": "yamada.tarou@wealthpark.com",
       "remittance_months": [
         3,
         6,
         9,
         12
       ],
       "remittance_date": null,
       "pay_at_month_end": true,
       "remarks": {
         "ja": "5月分の賃料：未送金",
         "en": "Rent of May: not sent"
       }
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('request')%> (<%=t('corporation_field')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1
     --data '
     {
       "corp_flag": 0,
       "nationality_country_id": 1,
       "residence_country_id": 5,
       "name": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "name_furi": {
         "ja": "WealthPark かぶしきかいしゃ"
       },
       "admin_name": {
         "ja": "鳥谷拓真",
         "en": "Takuma Toriya"
       },
       "admin_tel": "0312345678",
       "tel": "08012345678",
       "spare_phone_number": "07012345678",
       "establishment_date": "1986-01-01",
       "social_security_number": "7489103845748574",
       "taxpayer_number": "13800754785478",
       "postal_code": "1500013",
       "prefecture": {
         "ja": "東京都",
         "en": "Tokyo"
       },
       "city": {
         "ja": "渋谷区恵比寿",
         "en": "Ebisu, Shibuya-ku"
       },
       "land_lot_no": "1-20-18",
       "building_name": {
         "ja": "三富ビル新館",
         "en": "Mitomi Building Shinkan"
       },
       "address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "mailing_country": 1,
       "mailing_postal_code": "1500013",
       "mailing_building_name": {
         "ja": "三富ビル新館",
         "en": "Mitomi Building Shinkan"
       },
       "mailing_tel": "08012345678",
       "mailing_address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館3階",
         "en": "3nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "email": "yamada.tarou@wealthpark.com",
       "remittance_months": [
         3,
         6,
         9,
         12
       ],
       "remittance_date": null,
       "pay_at_month_end": true,
       "remarks": {
         "ja": "5月分の賃料：未送金",
         "en": "Rent of May: not sent"
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

- URL: `/owners/:owner_id`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/owners/1 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}

<% } %>
