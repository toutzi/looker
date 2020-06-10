view: toucan_kpi_purdet_with_contrib_visit {
  sql_table_name: "CA"."TOUCAN_KPI_PURDET_WITH_CONTRIB_VISIT"
    ;;

  dimension: count_distinct_customer_id {
    type: number
    sql: ${TABLE}."COUNT_DISTINCT_CUSTOMER_ID" ;;
  }

  dimension_group: purchase {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PURCHASE_DATE" ;;
  }

  dimension: sum_line_amount {
    type: number
    sql: ${TABLE}."SUM_LINE_AMOUNT" ;;
  }

  dimension: with_contributive_visits {
    type: string
    sql: ${TABLE}."WITH_CONTRIBUTIVE_VISITS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
