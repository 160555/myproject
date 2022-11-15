view: product_batch2 {
  sql_table_name: `Batch2_demo.Product_batch2`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ordered_quantity {
    type: number
    html: <img src="https://www.brettcase.com/
          product_images/{{ value }}.jpg"/> ;;
    sql: ${TABLE}.orderedQuantity ;;
  }

  dimension: restocking_lead_time {
    type: number
    required_access_grants: [restocking_lead_time]
    sql: ${TABLE}.restockingLeadTime ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: stock_level {
    type: number
    sql: ${TABLE}.stockLevel ;;
  }

  measure: count {
    type: count
    html:
    {% if value > 100 %}
      <span style="color:darkgreen;">{{ rendered_value }}</span>
    {% elsif value > 50 %}
      <span style="color:goldenrod;">{{ rendered_value }}</span>
    {% else %}
      <span style="color:darkred;">{{ rendered_value }}</span>
    {% endif %} ;;
    drill_fields: [name]
  }
}
