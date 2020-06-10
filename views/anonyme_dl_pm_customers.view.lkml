view: anonyme_dl_pm_customers {
  sql_table_name: "CA"."ANONYME_DL_PM_CUSTOMERS"
    ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: is_pm {
    type: string
    sql: ${TABLE}."IS_PM" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
