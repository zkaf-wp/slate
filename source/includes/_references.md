<%
  def print_references(category_key, header_key, values_key)
    (
      [
        #"## #{category_key.empty? ? '' : "[#{t(category_key)}] "}#{t(header_key)}",
        "## #{t(header_key)}",
        "",
        "| ID | #{t('description')} |",
        '|----|---------------------|',
      ] +
      t(values_key)
        .inject([]) {
          |arr, pair|
          arr << "| #{pair[0]} | #{pair[1]} |"
          arr
        }
    ).join("\n")
  end
%>

# <%=t('references')%>

<%= print_references('', 'country', 'countries') %>

<%= print_references('', 'remittance_type', 'remittance_types') %>

<%= print_references('', 'am_contract_md.upsert.fields.payment_type', 'am_contract_md.upsert.fields.payment_types') %>

<%=
  t_context('property_md.upsert.fields') {
    [
      print_references('property_md.header', '.property_type', '.property_types'),
      print_references('property_md.header', '.building_structure', '.building_structures'),
      print_references('property_md.header', '.ownership_type', '.ownership_types'),
      print_references('property_md.header', '.zoning', '.zonings'),
      print_references('property_md.header', '.land_category', '.land_categories'),
      print_references('property_md.header', '.area_classification', '.area_classifications'),
      print_references('property_md.header', '.method_of_area_measurement', '.method_of_area_measurements'),
      print_references('property_md.header', '.certificate_of_completion', '.certificate_of_completions'),
      print_references('property_md.header', '.management_type', '.management_types'),
      print_references('property_md.header', '.fire_protection_specified', '.fire_protection_specifieds'),
      print_references('property_md.header', '.land_right', '.land_rights'),
    ].join("\n")
  }
%>

<%=
  t_context('room_md.upsert.fields') {
    [
      print_references('room_md.header', '.room_category', '.room_categories'),
      print_references('room_md.header', '.room_category_detail', '.room_category_details'),
      print_references('room_md.header', '.balcony_direction', '.balcony_directions'),
      print_references('room_md.header', '.management_type', '.management_types'),
      print_references('room_md.header', '.room_type', '.room_types'),
      print_references('room_md.header', '.tenant_status', '.tenant_statuses'),
    ].join("\n")
  }
%>
