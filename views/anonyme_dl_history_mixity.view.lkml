view: anonyme_dl_history_mixity {
  sql_table_name: "CA"."ANONYME_DL_HISTORY_MIXITY"
    ;;

  dimension: cust_mag {
    type: number
    sql: ${TABLE}."CUST_MAG" ;;
  }

  dimension: cust_mixte {
    type: number
    sql: ${TABLE}."CUST_MIXTE" ;;
  }

  dimension: cust_web {
    type: number
    sql: ${TABLE}."CUST_WEB" ;;
  }

  dimension: month_range {
    type: number
    sql: ${TABLE}."MONTH_RANGE" ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}."PERIOD_END" ;;
  }

  dimension_group: period_start {
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
    sql: ${TABLE}."PERIOD_START" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
