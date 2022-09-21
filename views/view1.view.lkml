view: view1 {
  derived_table: {
    sql: select name from product_test ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}
