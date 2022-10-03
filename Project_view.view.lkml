view: project_view {

   dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
   dimension: birthdate {
    type: string
    sql: ${TABLE}.birthdate ;;
  }
  dimension: point_earned__n {
    type: number
    sql: ${TABLE}.PointEarned.N ;;
    group_label: "Point Earned"
    group_item_label: "N"
  }
  dimension: is_custom {
    type: yesno
    sql: isCustom ;;
  }
#measure 1
  measure:Average {
    type: average
    sql: ${point_earned__n} ;;

  }
  #measure 2
  measure: count {
    type: count
    drill_fields: [id]
  }
  }
