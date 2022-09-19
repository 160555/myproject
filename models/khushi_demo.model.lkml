connection: "khushi166"

# include all the views
include: "/views/**/*.view"

datagroup: khushi_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: khushi_demo_default_datagroup

explore: migration {}

explore: aj_demo {}

explore: college_details_aj {}

explore: product_batch2 {
  label: "ordered"
  join: product_test {
    type: left_outer
    relationship: one_to_one
    sql_on: ${product_batch2.ordered_quantity} =${product_test.ordered_quantity} ;;
  }
}

explore: pub_sub_sidhu_error_records {
  join: pub_sub_sidhu_error_records__attributes {
    view_label: "Pub Sub Sidhu Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${pub_sub_sidhu_error_records.attributes}) as pub_sub_sidhu_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: aj_demo_error_records {
  join: aj_demo_error_records__attributes {
    view_label: "Aj Demo Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${aj_demo_error_records.attributes}) as aj_demo_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: sample_01_error_records {
  join: sample_01_error_records__attributes {
    view_label: "Sample 01 Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${sample_01_error_records.attributes}) as sample_01_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: covid19 {



  }

explore: dynamodbbqoutputzip {}

explore: dynamodbbqoutput {}

explore: parquet_test {}

explore: practicepubsubtobigquery {}

explore: dynamodbbqoutput_test {}

explore: product_test {}

explore: pubsub_demo {}

explore: pubsub_demo_error_records {
  join: pubsub_demo_error_records__attributes {
    view_label: "Pubsub Demo Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${pubsub_demo_error_records.attributes}) as pubsub_demo_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: s3bqoutput {}

explore: dynamodbbqsample3 {}

explore: sampledata56 {}

explore: sample_data {}

explore: sampledata123 {}

explore: sample_output_demo {}

explore: sample_superstore_aj {}

explore: sidhu_demo2 {}

explore: trial1111 {}

explore: user_test {}
