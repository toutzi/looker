view: anonyme_dl_purchases_details_step_1 {
  sql_table_name: "CA"."ANONYME_DL_PURCHASES_DETAILS_STEP_1"
    ;;

  dimension: contact_id_src {
    type: string
    sql: ${TABLE}."CONTACT_ID_SRC" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}."LINE_AMOUNT" ;;
  }

  dimension: order_currency {
    type: string
    sql: ${TABLE}."ORDER_CURRENCY" ;;
  }

  dimension: order_discount_ati {
    type: number
    sql: ${TABLE}."ORDER_DISCOUNT_ATI" ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}."ORDER_DISCOUNT_TF" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: order_line_number {
    type: number
    sql: ${TABLE}."ORDER_LINE_NUMBER" ;;
  }

  dimension: order_payment_method {
    type: string
    sql: ${TABLE}."ORDER_PAYMENT_METHOD" ;;
  }

  dimension: order_ship_fee_ati {
    type: string
    sql: ${TABLE}."ORDER_SHIP_FEE_ATI" ;;
  }

  dimension: order_ship_fee_tf {
    type: string
    sql: ${TABLE}."ORDER_SHIP_FEE_TF" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_qty {
    type: number
    sql: ${TABLE}."PRODUCT_QTY" ;;
  }

  dimension: product_unit_discount_ati {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_DISCOUNT_ATI" ;;
  }

  dimension: product_unit_discount_tf {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_DISCOUNT_TF" ;;
  }

  dimension: product_unit_price_ati {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_PRICE_ATI" ;;
  }

  dimension: product_unit_price_tf {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_PRICE_TF" ;;
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

  dimension: purchase_type {
    type: string
    sql: ${TABLE}."PURCHASE_TYPE" ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}."STORE_ID" ;;
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
