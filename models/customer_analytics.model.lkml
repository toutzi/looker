connection: "snowflake_customer_analytics"

# include all the views
include: "/views/**/*.view"

datagroup: customer_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customer_analytics_default_datagroup

explore: anonyme_dl_customers {
  join: anonyme_dl_purchases_details {
    type: left_outer
    relationship: one_to_many
    sql_on: ${anonyme_dl_customers.customer_id} = ${anonyme_dl_purchases_details.customer_id} ;;
  }
  join: anonyme_dl_purchases_history {
    type: left_outer
    relationship: one_to_many
    sql_on: ${anonyme_dl_customers.customer_id_master} = ${anonyme_dl_purchases_history.customer_id_master} ;;
  }
}

explore: anonyme_dl_history_mixity {}

explore: anonyme_dl_pm_customers {}

explore: anonyme_dl_products {}

explore: anonyme_dl_profile_match {}

explore: anonyme_dl_promo_customers {}

explore: anonyme_dl_purchases {}

explore: anonyme_dl_purchases_details {}

explore: anonyme_dl_purchases_details_step_1 {}

explore: anonyme_dl_purchases_history {}

explore: anonyme_dl_visits {}

explore: anonyme_dl_work_cumulative_total {}

explore: toucan_kpi_decompte {}

explore: toucan_kpi_purdet_is_known {}

explore: toucan_kpi_purdet_with_card {}

explore: toucan_kpi_purdet_with_contrib_visit {}
