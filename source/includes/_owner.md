# <%=t('owner_md.header')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| id | <%=t('owner_md.fields.id')%> | | YES | integer |
| corp_flag   | <%=t('owner_md.fields.corp_flag')%> | <%=t('owner_md.fields.corp_flag_desc')%> | YES | integer |
| nationality_country_id | [<%=t('owner_md.fields.nationality_country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| residence_country_id | [<%=t('owner_md.fields.residence_country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| last_name_xx | <%=t('owner_md.fields.last_name')%> | <%=t('owner_md.fields.individual_name_desc')%><br><%=t('multilingual_support')%> | YES | string |
| first_name_xx | <%=t('owner_md.fields.first_name')%> | <%=t('owner_md.fields.individual_name_desc')%><br><%=t('multilingual_support')%> | YES | string |
| last_name_furi_xx | <%=t('owner_md.fields.last_name_furi')%> | <%=t('owner_md.fields.individual_name_desc')%><br><%=t('multilingual_support')%> | NO | string |
| first_name_furi_xx | <%=t('owner_md.fields.first_name_furi')%> | <%=t('owner_md.fields.individual_name_desc')%><br><%=t('multilingual_support')%> | NO | string |
| name_xx | <%=t('owner_md.fields.name')%> | <%=t('owner_md.fields.corporation_name_desc')%><br><%=t('multilingual_support')%> | YES | string |
| name_furi_xx | <%=t('owner_md.fields.name_furi')%> |  <%=t('owner_md.fields.corporation_name_desc')%><br><%=t('multilingual_support')%> | YES | string |
| admin_name_xx | <%=t('owner_md.fields.admin_name')%> | <%=t('multilingual_support')%> | NO | string |
| admin_tel | <%=t('owner_md.fields.admin_tel')%> | | NO | string |
| gender | <%=t('owner_md.fields.gender')%> | <%=t('owner_md.fields.gender_desc')%> | NO | integer |
| tel | <%=t('owner_md.fields.tel')%> | | NO | string |
| spare_phone_number | <%=t('owner_md.fields.spare_phone_number')%> | | NO | string |
| birth_date | <%=t('owner_md.fields.birth_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| social_security_number | <%=t('owner_md.fields.social_security_number')%> | | NO | string |
| taxpayer_number | <%=t('owner_md.fields.taxpayer_number')%> | | NO | string |
| postal_code | <%=t('owner_md.fields.postal_code')%> | | NO | string
| prefecture_xx | <%=t('owner_md.fields.prefecture')%> | <%=t('multilingual_support')%> | NO | string |
| city_xx | <%=t('owner_md.fields.city')%> | <%=t('multilingual_support')%> | NO | string |
| land_lot_no | <%=t('owner_md.fields.land_lot_no')%> | | NO | string |
| building_name_xx | <%=t('owner_md.fields.building_name')%> | <%=t('multilingual_support')%> | NO | string |
| address_xx | <%=t('owner_md.fields.address')%> | <%=t('multilingual_support')%> | NO | string |
| mailing_country | [<%=t('owner_md.fields.mailing_country')%>](#<%=get_header_link(t('references'), t('country'))%>) | | NO | integer |
| mailing_postal_code | <%=t('owner_md.fields.mailing_postal_code')%> | | NO | string |
| mailing_building_name | <%=t('owner_md.fields.mailing_building_name')%> | | NO | string |
| mailing_tel | <%=t('owner_md.fields.mailing_tel')%> | | NO | string |
| mailing_address | <%=t('owner_md.fields.mailing_address')%> | <%=t('multilingual_support')%> | NO | string |
| email | <%=t('owner_md.fields.email')%> | | NO | string |
| remittance_months | <%=t('owner_md.fields.remittance_month')%> | 1 ~ 12 | NO | integer[] |
| remittance_date | <%=t('owner_md.fields.remittance_date')%> | 1 ~ 31 | NO | integer |
| pay_at_month_end | <%=t('owner_md.fields.pay_at_month_end')%> | true/false | NO | bool |
| remarks | <%=t('owner_md.fields.remarks')%> | <%=t('multilingual_support')%> | NO | string |

> <%=t('request')%> | <%=t('create')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1
     --data-urlencode "corp_flag=1" \
     --data-urlencode "nationality_country_id=1" \
     --data-urlencode "residence_country_id=5" \
     --data-urlencode "last_name_ja=山田" \
     --data-urlencode "first_name_ja=太郎" \
     --data-urlencode "last_name_furi_ja=やまだ" \
     --data-urlencode "first_name_furi_ja=たろう" \
     --data-urlencode "last_name_en=Yamada" \
     --data-urlencode "first_name_en=Tarou" \
     --data-urlencode "admin_name_ja=鳥谷拓真" \
     --data-urlencode "admin_name_en=Takuma Toriya" \
     --data-urlencode "admin_tel=0312345678" \
     --data-urlencode "gender=1" \
     --data-urlencode "tel=08012345678" \
     --data-urlencode "spare_phone_number=07012345678" \
     --data-urlencode "birth_date=1986-01-01" \
     --data-urlencode "social_security_number=7489103845748574" \
     --data-urlencode "taxpayer_number=13800754785478" \
     --data-urlencode "postal_code=1500013" \
     --data-urlencode "prefecture_ja=東京都" \
     --data-urlencode "prefecture_en=Tokyo" \
     --data-urlencode "city_ja=渋谷区恵比寿" \
     --data-urlencode "city_en=Ebisu, Shibuya-ku" \
     --data-urlencode "land_lot_no=1-20-18" \
     --data-urlencode "building_name_ja=三富ビル新館" \
     --data-urlencode "building_name_en=Mitomi Building Shinkan" \
     --data-urlencode "address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "mailing_country=1" \
     --data-urlencode "mailing_postal_code=1500013" \
     --data-urlencode "mailing_building_name=三富ビル新館" \
     --data-urlencode "mailing_tel=08012345678" \
     --data-urlencode "mailing_address=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "email=yamada.tarou@wealthpark.com" \
     --data-urlencode "remittance_months[]=3" \
     --data-urlencode "remittance_months[]=6" \
     --data-urlencode "remittance_months[]=9" \
     --data-urlencode "remittance_months[]=12" \
     --data-urlencode "pay_at_month_end=true" \
     --data-urlencode "remarks_ja=5月分の賃料：未送金" \
     --data-urlencode "remarks_ja=Rent of May: not sent" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('request')%> | <%=t('update')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1
     --data-urlencode "corp_flag=0" \
     --data-urlencode "name_ja=山田太郎" \
     --data-urlencode "name_en=Tarou Yamada" \
     --data-urlencode "name_furi_ja=やまだたろう" \
     --data-urlencode "remittance_date=1" \
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
