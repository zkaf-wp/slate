<% t_scope('tenant_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | string |
| corp_flag | <%=t('.corp_flag')%> | <%=t('.corp_flag_desc')%> | YES | integer |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| withholding_tax_flag | <%=t('.withholding_tax_flag')%> | <%=t('.withholding_tax_flag_desc')%> | NO | bool |
| last_name | <%=t('.last_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| first_name | <%=t('.first_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| last_name_furi | <%=t('.last_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| first_name_furi | <%=t('.first_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| name | <%=t('.name')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| name_furi | <%=t('.name_furi')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| gender | <%=t('.gender')%> | <%=t('individual_field')%><br><%=t('.gender_desc')%> | NO | integer |
| birth_date | <%=t('.birth_date')%> | <%=t('individual_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| establishment_date | <%=t('.establishment_date')%> | <%=t('corporation_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| corp_registered_address | <%=t('.corp_registered_address')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_responsible_person | <%=t('.corp_responsible_person')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_responsible_person_office | <%=t('.corp_responsible_person_office')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_representative_person | <%=t('.corp_representative_person')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| tel_main | <%=t('.tel_main')%> | | NO | string |
| tel_sub | <%=t('.tel_sub')%> | | NO | string |
| email | <%=t('.email')%> | | NO | string |
| identity_type | [<%=t('.identity_type')%>](#<%=get_header_link(t('references'), t('.identity_type'))%>) | | NO | integer |
| identity_number | <%=t('.identity_number')%> | | NO | string |
| bank_name | <%=t('.bank_name')%> | <%=t('multilingual_support')%> | NO | string |
| bank_code | <%=t('.bank_code')%> | | NO | string |
| branch_name | <%=t('.branch_name')%> | <%=t('multilingual_support')%> | NO | string |
| branch_code | <%=t('.branch_code')%> | | NO | string |
| bank_account_holder | <%=t('.bank_account_holder')%> | | NO | string |
| bank_account_number | <%=t('.bank_account_number')%> | | NO | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%> (<%=t('individual_field')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1 \
     --data '
     {
       "corp_flag": 1,
       "country_id": 1,
       "withholding_tax_flag": true,
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
       "gender": 0,
       "birth_date": "1986-01-01",
       "tel_main": "08012345678",
       "tel_sub": "0301234567",
       "email": "yamada.tarou@wealth-park.com",
       "identity_type": 3,
       "identity_number": "EA35432156565",
       "bank_name": {
         "ja": "完璧銀行",
         "en": "Perfect Bank"
       },
       "bank_code": "0002",
       "branch_name": {
         "ja": "札幌支店",
         "en": "SAPPORO"
       },
       "branch_code": "814",
       "bank_account_holder": "Tarou Yamada",
       "bank_account_number": "78709582793",
       "remarks": {
         "ja": "5月分の賃料：滞納",
         "en": "Rent of May: not pay"
       }
     }
     ' \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('request')%> (<%=t('corporation_field')%>)

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1 \
     --data '
     {
       "corp_flag": 0,
       "country_id": 1,
       "withholding_tax_flag": true,
       "name": {
         "ja": "すばらし株式会社",
         "en": "Subarashi Corp Inc."
       },
       "name_furi": {
         "ja": "すばらしかぶしきかいしゃ"
       },
       "establishment_date": "2005-01-01",
       "corp_registered_address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "corp_responsible_person": {
         "ja": "鳥谷拓真",
         "en": "Toriya Takuma"
       },
       "corp_responsible_person_office": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館3階",
         "en": "3nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo"
       },
       "corp_representative_person": {
         "ja": "川田隆太",
         "en": "Ryuta Kawada"
       },
       "tel_main": "08012345678",
       "tel_sub": "0301234567",
       "email": "yamada.tarou@wealth-park.com",
       "identity_type": 3,
       "identity_number": "EA35432156565",
       "bank_name": {
         "ja": "完璧銀行",
         "en": "Perfect Bank"
       },
       "bank_code": "0002",
       "branch_name": {
         "ja": "札幌支店",
         "en": "SAPPORO"
       },
       "branch_code": "814",
       "bank_account_holder": "Tarou Yamada",
       "bank_account_number": "78709582793",
       "remarks": {
         "ja": "5月分の賃料：滞納",
         "en": "Rent of May: not pay"
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

- URL: `/tenants/:tenant_id`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1 \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
