# <%=t('tenant_md.header')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('tenant_md.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | YES | integer |
| corp_flag | <%=t('.corp_flag')%> | <%=t('.corp_flag_desc')%> | YES | integer |
| country_id | [<%=t('.country_id')%>](#<%=get_header_link(t('references'), t('country'))%>) | | YES | integer |
| withholding_tax_flag | <%=t('.withholding_tax_flag')%> | <%=t('.withholding_tax_flag_desc')%> | NO | bool |
| last_name_xx | <%=t('.last_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| first_name_xx | <%=t('.first_name')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| last_name_furi_xx | <%=t('.last_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| first_name_furi_xx | <%=t('.first_name_furi')%> | <%=t('individual_field')%><br><%=t('multilingual_support')%> | NO | string |
| name_xx | <%=t('.name')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| name_furi_xx | <%=t('.name_furi')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| gender | <%=t('.gender')%> | <%=t('individual_field')%><br><%=t('.gender_desc')%> | NO | integer |
| birth_date | <%=t('.birth_date')%> | <%=t('individual_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| establishment_date | <%=t('.establishment_date')%> | <%=t('corporation_field')%><br><%=t('format_yyyymmdd')%> | NO | string |
| corp_registered_address_xx | <%=t('.corp_registered_address')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_responsible_person_xx | <%=t('.corp_responsible_person')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_responsible_person_office_xx | <%=t('.corp_responsible_person_office')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| corp_representative_person_xx | <%=t('.corp_representative_person')%> | <%=t('corporation_field')%><br><%=t('multilingual_support')%> | NO | string |
| tel_main | <%=t('.tel_main')%> | | NO | string |
| tel_sub | <%=t('.tel_sub')%> | | NO | string |
| email | <%=t('.email')%> | | NO | string |
| identity_type | [<%=t('.identity_type')%>](#<%=get_header_link(t('references'), t('.identity_type'))%>) | | NO | integer |
| identity_number | <%=t('.identity_number')%> | | NO | string |
| bank_name_xx | <%=t('.bank_name')%> | <%=t('multilingual_support')%> | NO | string |
| bank_code | <%=t('.bank_code')%> | | NO | string |
| branch_name_xx | <%=t('.branch_name')%> | <%=t('multilingual_support')%> | NO | string |
| branch_code | <%=t('.branch_code')%> | | NO | string |
| bank_account_holder | <%=t('.bank_account_holder')%> | | NO | string |
| bank_account_number | <%=t('.bank_account_number')%> | | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1 \
     --data-urlencode "corp_flag=1" \
     --data-urlencode "country_id=1" \
     --data-urlencode "withholding_tax_flag=true" \
     --data-urlencode "last_name_ja=山田" \
     --data-urlencode "first_name_ja=太郎" \
     --data-urlencode "last_name_furi_ja=やまだ" \
     --data-urlencode "first_name_furi_ja=たろう" \
     --data-urlencode "last_name_en=Yamada" \
     --data-urlencode "first_name_en=Tarou" \
     --data-urlencode "gender=0" \
     --data-urlencode "birth_date=1986-01-01" \
     --data-urlencode "tel_main=08012345678" \
     --data-urlencode "tel_sub=0301234567" \
     --data-urlencode "email=yamada.tarou@wealth-park.com" \
     --data-urlencode "identity_type=0" \
     --data-urlencode "identity_number=EA35432156565" \
     --data-urlencode "bank_name_ja=完璧銀行" \
     --data-urlencode "bank_name_en=Perfect Bank" \
     --data-urlencode "bank_code=0002" \
     --data-urlencode "branch_name_ja=札幌支店" \
     --data-urlencode "branch_name_en=SAPPORO" \
     --data-urlencode "branch_code=814" \
     --data-urlencode "bank_account_holder=Tarou Yamada" \
     --data-urlencode "bank_account_number=78709582793" \
     --data-urlencode "remarks_ja=5月分の賃料：滞納" \
     --data-urlencode "remarks_ja=Rent of May: not pay" \
     <%=HEADER_ACCESS_TOKEN%>
```

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1 \
     --data-urlencode "corp_flag=0" \
     --data-urlencode "name_ja=すばらし株式会社" \
     --data-urlencode "name_en=Subarashi Corp Inc." \
     --data-urlencode "name_furi_ja=すばらしかぶしきかいしゃ" \
     --data-urlencode "establishment_date=2005-01-01" \
     --data-urlencode "corp_registered_address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "corp_registered_address_en=2nd Floor, Mitomi Building Shinkan, 1-20-18 Ebisu, Shibuya-ku, Tokyo" \
     --data-urlencode "corp_responsible_person_ja=鳥谷拓真" \
     --data-urlencode "corp_responsible_person_en=Toriya Takuma" \
     --data-urlencode "corp_representative_person_ja=川田隆太" \
     --data-urlencode "corp_representative_person_en=Ryuta Kawada" \
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
