- dashboard: xyz
  title: xyz
  layout: newspaper
  preferred_viewer: dashboards
  crossfilter_enabled: true
  description: ''
  preferred_slug: xKUhLMKPy5iX2GywruMoRR
  elements:
  - title: xyz
    name: xyz
    model: /models/khushi_demo.model.lkml
    explore: covid19
    type: looker_grid
    fields: [covid19.active, covid19.admin2]
    sorts: [covid19.active]
    limit: 5
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Country Region: covid19.country_region
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Country Region
    title: Country Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: /models/khushi_demo.model.lkml
    explore: covid19
    listens_to_filters: []
    field: covid19.country_region
