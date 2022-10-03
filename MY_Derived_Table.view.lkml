view: my_derived_table {
   derived_table: {
      explore_source: Project_view {
        column: id {field: Project_view.id}
        column: birthdate {field: Project_view.Birthdate }
        column: point_earned__n{field: Project_view.point_earned__n}

      }
    }
      dimension: id {
      type: string
      sql: ${TABLE}.id ;;
    }

    dimension: birthdate {
      type: string
      sql: ${TABLE}.birthdate ;;
    }

    dimension:  point_earned__n {
      type: string
      sql: ${TABLE}. point_earned__n ;;
    }
  }
