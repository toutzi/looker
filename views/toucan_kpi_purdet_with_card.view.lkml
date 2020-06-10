view: toucan_kpi_purdet_with_card {
  sql_table_name: "CA"."TOUCAN_KPI_PURDET_WITH_CARD"
    ;;

  dimension: count_distinct_customer_id {
    type: number
    sql: ${TABLE}."COUNT_DISTINCT_CUSTOMER_ID" ;;
  }

  dimension: product_nature {
    type: string
    sql: ${TABLE}."PRODUCT_NATURE" ;;
  }

  dimension: product_universe {
    type: string
    sql: ${TABLE}."PRODUCT_UNIVERSE" ;;
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

  dimension: with_card {
    type: string
    sql: ${TABLE}."WITH_CARD" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
