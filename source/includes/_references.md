<%
  def print_references(i18n_key)
    (
      [
        "| ID | #{t('description')} |",
        '|----|---------------------|',
      ] +
      t(i18n_key)
        .inject([]) {
          |arr, pair|
          arr << "| #{pair[0]} | #{pair[1]} |"
          arr
        }
    ).join("\n")
  end
%>

# <%=t('references')%>

## <%=t('country')%>

<%= print_references('countries') %>

## <%=t('remittance_type')%>

<%= print_references('remittance_types') %>

## <%=t('property_md.upsert.fields.property_type')%>

<%= print_references('property_md.upsert.fields.property_types') %>

## <%=t('property_md.upsert.fields.building_structure')%>

<%= print_references('property_md.upsert.fields.building_structures') %>

## <%=t('property_md.upsert.fields.ownership_type')%>

<%= print_references('property_md.upsert.fields.ownership_types') %>

## <%=t('property_md.upsert.fields.zoning')%>

<%= print_references('property_md.upsert.fields.zonings') %>

## <%=t('property_md.upsert.fields.land_category')%>

<%= print_references('property_md.upsert.fields.land_categories') %>

## <%=t('property_md.upsert.fields.area_classification')%>

<%= print_references('property_md.upsert.fields.area_classifications') %>

## <%=t('property_md.upsert.fields.method_of_area_measurement')%>

<%= print_references('property_md.upsert.fields.method_of_area_measurements') %>

## <%=t('property_md.upsert.fields.certificate_of_completion')%>

<%= print_references('property_md.upsert.fields.certificate_of_completions') %>

## <%=t('property_md.upsert.fields.management_type')%>

<%= print_references('property_md.upsert.fields.management_types') %>

## <%=t('property_md.upsert.fields.fire_protection_specified')%>

<%= print_references('property_md.upsert.fields.fire_protection_specifieds') %>

## <%=t('property_md.upsert.fields.land_right')%>

<%= print_references('property_md.upsert.fields.land_rights') %>
