<% t_scope('owner_work_md') { %>
# <%=t('.header')%>

<%=t('.desc')%>

## <%=t('create')%> & <%=t('update')%>

- URL: `/owners/:owner_id/work`
- <%=t('method')%>: `POST`

***<%=t('request')%>***

<% t_scope('.upsert.fields', use_html_br: true) { %>
| <%=t('parameter')%> | <%=t('name')%> | <%=t('remarks')%> | <%=t('required')%> | <%=t('data_form')%> |
|---------------------|----------------|-------------------|--------------------|---------------------|
| owner_id | <%=t('.owner_id')%> | <%=t('one_one_relationship')%> | YES | integer |
| post_code | <%=t('.post_code')%> | | NO | string |
| tel | <%=t('.tel')%> | | NO | string |
| annual_income | <%=t('.annual_income')%> | <%=t('unit_yen')%> | NO | double |
| company_capital | <%=t('.company_capital')%> | <%=t('unit_yen')%> | NO | double |
| staff_size | <%=t('.staff_size')%> | <%=t('unit_person')%> | NO | integer |
| annual_turnover | <%=t('.annual_turnover')%> | <%=t('unit_yen')%> | NO | double |
| name_xx | <%=t('.name')%> | <%=t('multilingual_support')%> | NO | string |
| address_xx | <%=t('.address')%> | <%=t('multilingual_support')%> | NO | string |
| industry_xx | <%=t('.industry')%> | <%=t('multilingual_support')%> | NO | string |
| department_xx | <%=t('.department')%> | <%=t('multilingual_support')%> | NO | string |
| position_xx | <%=t('.position')%> | <%=t('multilingual_support')%> | NO | string |
| remarks_xx | <%=t('.remarks')%> | <%=t('multilingual_support')%> | NO | string |
<% } %>

> <%=t('request')%>

```shell
curl -v -X POST <%=BASE_PATH%>/owners/1/work \
     --data-urlencode "post_code=1500013" \
     --data-urlencode "tel=0354886267" \
     --data-urlencode "annual_income=7000000" \
     --data-urlencode "company_capital=462000000" \
     --data-urlencode "staff_size=43" \
     --data-urlencode "annual_turnover=30000000" \
     --data-urlencode "name_ja=WealthPark株式会社" \
     --data-urlencode "name_en=WealthPark, Inc." \
     --data-urlencode "address_ja=東京都渋谷区恵比寿1-20-18 三富ビル新館2階" \
     --data-urlencode "address_en=2F Mitomi New Bldg. 1-20-18, Ebisu, Shibuya-ku, Tokyo 150-0013, Japan" \
     --data-urlencode "industry_ja=不動産" \
     --data-urlencode "industry_en=Realestate" \
     --data-urlencode "department_ja=開発" \
     --data-urlencode "department_en=development" \
     --data-urlencode "position_ja=エンジニア" \
     --data-urlencode "position_en=Engineer" \
     --data-urlencode "remarks_ja=勤務時間３年目" \
     --data-urlencode "remarks_en=Work for 3 years" \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
```

## <%=t('delete')%>

- URL: `/owners/:owner_id/work`
- <%=t('method')%>: `DELETE`

> <%=t('request')%>

```shell
curl -v -X DELETE <%=BASE_PATH%>/owners/1/work \
     <%=HEADER_ACCESS_TOKEN%>
```

> <%=t('response')%>

```json
{
    "err": 0
}
<% } %>
