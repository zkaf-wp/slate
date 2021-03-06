<% t_scope('tenant_work_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/tenants/:tenant_id/work`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| tenant_id | <%=t('.tenant_id')%> | | ○ | string |
| post_code | <%=t('.post_code')%> | | × | string |
| tel | <%=t('.tel')%> | | × | string |
| annual_income | <%=t('.annual_income')%> | <%=t('unit_yen')%> | × | double |
| company_capital | <%=t('.company_capital')%> | <%=t('unit_yen')%> | × | double |
| staff_size | <%=t('.staff_size')%> | | × | integer |
| annual_turnover | <%=t('.annual_turnover')%> | <%=t('unit_yen')%> | × | double |
| name | <%=t('.name')%> | <%=t('multilingual_support')%> | × | string |
| address | <%=t('.address')%> | <%=t('multilingual_support')%> | × | string |
| industry | <%=t('.industry')%> | <%=t('multilingual_support')%> | × | string |
| department | <%=t('.department')%> | <%=t('multilingual_support')%> | × | string |
| position | <%=t('.position')%> | <%=t('multilingual_support')%> | × | string |
| remarks | <%=t('.remarks')%> | <%=t('multilingual_support')%> | × | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/tenants/1/work \
     --data '
     {
       "post_code": "1500013",
       "tel": "0354886267",
       "annual_income": 7000000,
       "company_capital": 462000000,
       "staff_size": 43,
       "annual_turnover": 30000000,
       "name": {
         "ja": "WealthPark株式会社",
         "en": "WealthPark, Inc."
       },
       "address": {
         "ja": "東京都渋谷区恵比寿1-20-18 三富ビル新館2階",
         "en": "2F Mitomi New Bldg. 1-20-18, Ebisu, Shibuya-ku, Tokyo 150-0013, Japan"
       },
       "industry": {
         "ja": "不動産",
         "en": "Realestate"
       },
       "department": {
         "ja": "開発",
         "en": "development"
       },
       "position": {
         "ja": "エンジニア",
         "en": "Engineer"
       },
       "remarks": {
         "ja": "勤務時間３年目",
         "en": "Work for 3 years"
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

- URL: `/tenants/:tenant_id/work`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/tenants/1/work \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
