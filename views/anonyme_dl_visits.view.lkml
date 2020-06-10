view: anonyme_dl_visits {
  sql_table_name: "CA"."ANONYME_DL_VISITS"
    ;;

  dimension: device {
    type: string
    sql: ${TABLE}."DEVICE" ;;
  }

  dimension: domain_id {
    type: string
    sql: ${TABLE}."DOMAIN_ID" ;;
  }

  dimension: domain_session_key {
    type: string
    sql: ${TABLE}."DOMAIN_SESSION_KEY" ;;
  }

  dimension: head_visitor_id {
    type: string
    sql: ${TABLE}."HEAD_VISITOR_ID" ;;
  }

  dimension_group: hit {
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
    sql: ${TABLE}."HIT_DATE" ;;
  }

  dimension: tracking_method_campaign {
    type: string
    sql: ${TABLE}."TRACKING_METHOD_CAMPAIGN" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
