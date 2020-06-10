view: toucan_kpi_purdet_is_known {
  sql_table_name: "CA"."TOUCAN_KPI_PURDET_IS_KNOWN"
    ;;

  dimension: count_distinct_customer_id {
    type: number
    sql: ${TABLE}."COUNT_DISTINCT_CUSTOMER_ID" ;;
  }

  dimension: is_known {
    type: string
    sql: ${TABLE}."IS_KNOWN" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
