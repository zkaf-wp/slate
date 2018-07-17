<% t_scope('owner_income_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id/income`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | <%=t('one_one_relationship')%> | YES | string |
| general_business_income | <%=t('.general_business_income')%> | <%=t('unit_yen')%> | NO |double |
| business_agriculture_income | <%=t('.business_agriculture_income')%> | <%=t('unit_yen')%> | NO |double |
| off_system_realestate_income | <%=t('.off_system_realestate_income')%> | <%=t('unit_yen')%> | NO |double |
| interest_income | <%=t('.interest_income')%> | <%=t('unit_yen')%> | NO |double |
| dividend | <%=t('.dividend')%> | <%=t('unit_yen')%> | NO |double |
| salary | <%=t('.salary')%> | <%=t('unit_yen')%> | NO |double |
| national_pension_etc | <%=t('.national_pension_etc')%> | <%=t('unit_yen')%> | NO |double |
| others | <%=t('.others')%> | <%=t('unit_yen')%> | NO |double |
| income_from_transfer_short_term | <%=t('.income_from_transfer_short_term')%> | <%=t('unit_yen')%> | NO |double |
| income_from_transfer_long_term | <%=t('.income_from_transfer_long_term')%> | <%=t('unit_yen')%> | NO |double |
| one_off_income | <%=t('.one_off_income')%> | <%=t('unit_yen')%> | NO |double |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1/income \
     --data-urlencode "general_business_income=500000" \
     --data-urlencode "business_agriculture_income=0" \
     --data-urlencode "off_system_realestate_income=200000" \
     --data-urlencode "interest_income=50000" \
     --data-urlencode "dividend=2000" \
     --data-urlencode "salary=400000" \
     --data-urlencode "national_pension_etc=0" \
     --data-urlencode "others=200000" \
     --data-urlencode "income_from_transfer_short_term=1000000" \
     --data-urlencode "income_from_transfer_long_term=10000000" \
     --data-urlencode "one_off_income=10000" \
     --data-urlencode "remarks_ja=雑所得：FX" \
     --data-urlencode "remarks_en=Other income: FX" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/owners/:owner_id/income`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/owners/1/income \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
