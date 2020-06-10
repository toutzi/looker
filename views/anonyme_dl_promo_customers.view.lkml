view: anonyme_dl_promo_customers {
  sql_table_name: "CA"."ANONYME_DL_PROMO_CUSTOMERS"
    ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: nb_orders {
    type: number
    sql: ${TABLE}."NB_ORDERS" ;;
  }

  dimension: nb_orders_with_discount {
    type: number
    sql: ${TABLE}."NB_ORDERS_WITH_DISCOUNT" ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}."ORDER_DISCOUNT_TF" ;;
  }

  dimension: pct_orders_with_discount {
    type: number
    sql: ${TABLE}."PCT_ORDERS_WITH_DISCOUNT" ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}."TOTAL_DISCOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
