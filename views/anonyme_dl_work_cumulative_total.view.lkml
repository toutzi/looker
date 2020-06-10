view: anonyme_dl_work_cumulative_total {
  sql_table_name: "CA"."ANONYME_DL_WORK_CUMULATIVE_TOTAL"
    ;;

  dimension: cumulative_line_amount {
    type: number
    sql: ${TABLE}."CUMULATIVE_LINE_AMOUNT" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: ranking_line_amount {
    type: number
    sql: ${TABLE}."RANKING_LINE_AMOUNT" ;;
  }

  dimension: sum_line_amount {
    type: number
    sql: ${TABLE}."SUM_LINE_AMOUNT" ;;
  }

  dimension: total_line_amount {
    type: number
    sql: ${TABLE}."TOTAL_LINE_AMOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
