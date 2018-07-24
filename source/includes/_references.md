# <%=t('references')%>

<%= print_references('country', 'countries') %>

<%= print_references('remittance_type', 'remittance_types') %>

<%= print_references('room_am_contract_md.upsert.fields.payment_type', 'room_am_contract_md.upsert.fields.payment_types') %>

<%=
  t_scope('property_md.upsert.fields') {
    [
      print_references('.property_type', '.property_types'),
      print_references('.building_structure', '.building_structures'),
      print_references('.zoning', '.zonings'),
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
