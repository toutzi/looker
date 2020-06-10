view: toucan_kpi_decompte {
  sql_table_name: "CA"."TOUCAN_KPI_DECOMPTE"
    ;;

  dimension: nb_active_customer {
    type: number
    sql: ${TABLE}."NB_ACTIVE_CUSTOMER" ;;
  }

  dimension: nb_customers {
    type: number
    sql: ${TABLE}."NB_CUSTOMERS" ;;
  }

  dimension: nb_pm {
    type: number
    sql: ${TABLE}."NB_PM" ;;
  }

  dimension: nb_with_card {
    type: number
    sql: ${TABLE}."NB_WITH_CARD" ;;
  }

  dimension: nb_with_email {
    type: number
    sql: ${TABLE}."NB_WITH_EMAIL" ;;
  }

  dimension: nb_with_sms {
    type: number
    sql: ${TABLE}."NB_WITH_SMS" ;;
  }

  dimension: nb_with_web_client {
    type: number
    sql: ${TABLE}."NB_WITH_WEB_CLIENT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
