# <%=t('references')%>

<%= print_references('country', 'countries') %>

<%= print_references('remittance_type', 'remittance_types') %>

<%= print_references('room_am_contract_md.upsert.fields.payment_type', 'room_am_contract_md.upsert.fields.payment_types') %>

<%=
  t_scope('property_md.upsert.fields') {
    [
      print_references('.japan_property_type', '.japan_property_types'),
      print_references('.none_japan_property_type', '.none_japan_property_types'),
      print_references('.building_structure', '.building_structures'),
      print_references('.japan_zoning', '.japan_zonings'),
      print_references('.none_japan_zoning', '.none_japan_zonings'),
      print_references('.land_category', '.land_categories'),
      print_references('.area_classification', '.area_classifications'),
      print_references('.method_of_area_measurement', '.method_of_area_measurements'),
      print_references('.certificate_of_completion', '.certificate_of_completions'),
      print_references('.management_type', '.management_types'),
      print_references('.fire_protection_specified', '.fire_protection_specifieds'),
      print_references('.land_right', '.land_rights'),
    ].join("\n")
  }
%>

<%=
  t_scope('room_md.upsert.fields') {
    [
      print_references('.room_category', '.room_categories'),
      print_references('.room_category_detail', '.room_category_details'),
      print_references('.balcony_direction', '.balcony_directions'),
      print_references('.management_type', '.management_types'),
      print_references('.room_type', '.room_types'),
      print_references('.tenant_status', '.tenant_statuses'),
    ].join("\n")
  }
%>

<%= print_references('tenant_md.upsert.fields.identity_type', 'tenant_md.upsert.fields.identity_types') %>

<%=
  t_scope('tenant_rental_contract_md.upsert.fields') {
    [
      print_references('.status', '.statuses'),
      print_references('.fee', '.fees'),
    ].join("\n")
  }
%>

<% t_scope('payer_payee') { %>

## <%=t('.header')%>

<%
  pl_text = "[#{t('pl')}](##{get_header_link(t('cashflow_md.header'), t('cashflow_md.categories_and_categorygroups.header'))})"
  remittance_text = "[#{t('remittance')}](##{get_header_link(t('references'), t('remittance_type'))})"
  payee_vendor_text = "[#{t('payee')}](##{get_header_link(t('cashflow_md.header'), t('cashflow_md.payee_vendor.upsert.header'))})"
%>

| <%=t('pl')%> / <%=t('remittance')%> | <%=t('type')%> | <%=t('payee')%> | <%=t('payer')%> | <%=t('remarks')%> |
|-------------------------------------|----------------|-----------------|-----------------|-------------------|
| <%=pl_text%> | <%=t('.pl_income')%> | "owner" | "tenant/:tenant_id" | |
| <%=pl_text%> | <%=t('.pl_expenditure')%> | "payee_vendor/:payee_vendor_id" | "owner" | <%=payee_vendor_text%> |
| <%=remittance_text%> | <%=t('.remittance_4')%><br><%=t('.remittance_5')%> | "owner" | null | |
| <%=remittance_text%> | <%=t('.remittance_1')%><br><%=t('.remittance_6')%> | null | "owner" | |
| <%=remittance_text%> | <%=t('.remittance_30')%><br><%=t('.remittance_90')%> | "owner" | "tenant/:tenant_id" | |
| <%=remittance_text%> | <%=t('.remittance_31')%><br><%=t('.remittance_91')%> | "tenant/:tenant_id" | "owner" | |
| <%=remittance_text%> | <%=t('.remittance_80')%> | null | "tenant/:tenant_id" | |
| <%=remittance_text%> | <%=t('.remittance_81')%> | "owner" | null | |
| <%=remittance_text%> | <%=t('.remittance_2')%><br><%=t('.remittance_7')%> | null | null | |

<% } %>
