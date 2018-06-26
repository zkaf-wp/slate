# <%=t('references')%>

## <%=t('country')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  ((1..12).to_a + (14..18).to_a + [13])
    .map {
      |id|
      "| #{id} | #{t("countries.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('remittance_type')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (1..7)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("remittance_types.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.property_type')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  ((0..20).to_a + [27])
    .map {
      |id|
      "| #{id} | #{t("property_fields.property_types.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.building_structure')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  ((0..10).to_a - [8])
    .map {
      |id|
      "| #{id} | #{t("property_fields.building_structures.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.ownership_type')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..2)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.ownership_types.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.zoning')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..12)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.zonings.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.land_category')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..5)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.land_categories.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.area_classification')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..3)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.area_classifications.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.method_of_area_measurement')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..2)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.method_of_area_measurements.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.certificate_of_completion')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..2)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.certificate_of_completions.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.management_type')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..3)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.management_types.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.fire_protection_specified')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..3)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.fire_protection_specifieds.#{id}")} |"
    }
    .join("\n")
%>

## <%=t('property_fields.land_right')%>

| ID | <%=t('description')%> |
|----|-----------------------|
<%=
  (0..3)
    .to_a
    .map {
      |id|
      "| #{id} | #{t("property_fields.land_rights.#{id}")} |"
    }
    .join("\n")
%>
