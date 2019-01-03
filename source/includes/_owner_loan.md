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
| owner_id | <%=t('.owner_id')%> | <%=t('one_n_relationship')%> | ○ | string |
| property_id | <%=t('.property_id')%> | <%=t('one_n_relationship')%> | ○ | string |
| execution_date | <%=t('.execution_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| full_repayment_date | <%=t('.full_repayment_date')%> | <%=t('format_yyyymmdd')%> | × | string |
| amount | <%=t('.amount')%> | <%=t('unit_yen')%> | × | double |
| principal_outstanding | <%=t('.principal_outstanding')%> | <%=t('unit_yen')%> | × | double |
| interest | <%=t('.interest')%> | <%=t('unit_percentage')%> | × | double |
| financial_institution | <%=t('.financial_institution')%> | <%=t('multilingual_support')%> | × | string |
| guarantor_type | <%=t('.guarantor_type')%> | <%=t('.guarantor_type_desc')%> | × | integer |
| guarantor | <%=t('.guarantor')%> | <%=t('multilingual_support')%> | × | string |
| mortgage_status | <%=t('.mortgage_status')%> | <%=t('.mortgage_status_desc')%> | × | integer |
| mortgagee | <%=t('.mortgagee')%> | <%=t('multilingual_support')%> | × | string |
| mortgagor | <%=t('.mortgagor')%> | <%=t('multilingual_support')%> | × | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1/properties/1/loan \
     --data '
     {
       "execution_date": "2016-06-16",
       "full_repayment_date": "2046-06-16",
       "amount": 40000000,
       "principal_outstanding": 35000000,
       "interest": 0.8,
       "financial_institution": {
         "ja": "完璧銀行",
         "en": "Perfect Bank"
       },
       "guarantor_type": 2,
       "guarantor": {
         "ja": "山田太郎",
         "en": "Tarou Yamada"
       },
       "mortgage_status": 1,
       "mortgagee": {
         "ja": "山田太郎",
         "en": "Tarou Yamada"
       },
       "mortgagor": {
         "ja": "すばらしい銀行",
         "en": "Wonder Bank"
       },
       "remarks": {
         "ja": "利息相談中",
         "en": "Discussing about interest"
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
