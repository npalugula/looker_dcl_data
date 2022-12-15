view: test_start_date {

  derived_table: {
    sql: select max(created_at) as latest_date1 from orders ;;
  }

  dimension: latest_date {
    type: date
    sql: ${TABLE}.latest_date1 ;;
    suggest_persist_for: "1 second"
  }

  dimension: latest_date_str {
    type: string
    sql: cast(${TABLE}.latest_date1 as string) ;;
  }

}
