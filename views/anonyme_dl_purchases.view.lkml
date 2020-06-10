view: anonyme_dl_purchases {
  sql_table_name: "CA"."ANONYME_DL_PURCHASES"
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}."AGE_RANGE" ;;
  }

  dimension: basket_amount {
    type: number
    sql: ${TABLE}."BASKET_AMOUNT" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: is_pm {
    type: string
    sql: ${TABLE}."IS_PM" ;;
  }

  dimension: mixity {
    type: string
    sql: ${TABLE}."MIXITY" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: products_qty {
    type: number
    sql: ${TABLE}."PRODUCTS_QTY" ;;
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

  dimension: store_type {
    type: string
    sql: ${TABLE}."STORE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
