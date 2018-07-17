<% t_scope('owner_loan_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id/properties/:property_id/loan`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | YES | string |
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | YES | string |
| execution_date | <%=t('.execution_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| full_repayment_date | <%=t('.full_repayment_date')%> | <%=t('format_yyyymmdd')%> | NO | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%> | NO | double |
| principal_outstanding | <%=t('.principal_outstanding')%> | <%=t('unit_yen')%> | NO | double |
| interest | <%=t('.interest')%> | <%=t('unit_percentage')%> | NO | double |
| financial_institution_xx | <%=t('.financial_institution')%> | <%=t('multilingual_support')%> | NO | string |
| guarantor_type | <%=t('.guarantor_type')%> | <%=t('.guarantor_type_desc')%> | NO | integer |
| guarantor_xx | <%=t('.guarantor')%> | <%=t('multilingual_support')%> | NO | string |
| mortgage_status | <%=t('.mortgage_status')%> | <%=t('.mortgage_status_desc')%> | NO | integer |
| mortgagee_xx | <%=t('.mortgagee')%> | <%=t('multilingual_support')%> | NO | string |
| mortgagor_xx | <%=t('.mortgagor')%> | <%=t('multilingual_support')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1/properties/1/loan \
     --data-urlencode "execution_date=2016-06-16" \
     --data-urlencode "full_repayment_date=2046-06-16" \
     --data-urlencode "amount=40000000" \
     --data-urlencode "principal_outstanding=35000000" \
     --data-urlencode "interest=0.8" \
     --data-urlencode "financial_institution_ja=完璧銀行" \
     --data-urlencode "financial_institution_en=Perfect Bank" \
     --data-urlencode "guarantor_type=0" \
     --data-urlencode "guarantor_ja=山田太郎" \
     --data-urlencode "guarantor_en=Tarou Yamada" \
     --data-urlencode "mortgage_status=1" \
     --data-urlencode "mortgagee_ja=山田太郎" \
     --data-urlencode "mortgagee_en=Tarou Yamada" \
     --data-urlencode "mortgagor_ja=すばらしい銀行" \
     --data-urlencode "mortgagor_en=Wonder Bank" \
     --data-urlencode "remarks_ja=利息相談中" \
     --data-urlencode "remarks_en=Discussing about interest" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/owners/:owner_id/properties/:property_id/loan`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/owners/1/properties/1/loan \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
