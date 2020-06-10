view: anonyme_dl_customers {
  sql_table_name: "CA"."ANONYME_DL_CUSTOMERS"
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}."AGE_RANGE" ;;
  }


  dimension_group: birthdate {
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
    sql: ${TABLE}."BIRTHDATE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}."CLUSTER" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_id_master {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
  }

  dimension: customer_id_with_card {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_WITH_CARD" ;;
  }

  dimension: customer_id_with_mail {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_WITH_MAIL" ;;
  }

  dimension: customer_id_with_mail_optin {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_WITH_MAIL_OPTIN" ;;
  }

  dimension: customer_id_with_sms {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_WITH_SMS" ;;
  }

  dimension: customer_id_with_sms_optin {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_WITH_SMS_OPTIN" ;;
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE" ;;
  }

  dimension: customer_value_180_days {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_180_DAYS" ;;
  }

  dimension: customer_value_30_days {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_30_DAYS" ;;
  }

  dimension: customer_value_365_days {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_365_DAYS" ;;
  }

  dimension: customer_value_90_days {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_90_DAYS" ;;
  }

  dimension: customer_value_ratio {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_RATIO" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: first_buy {
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
    sql: ${TABLE}."FIRST_BUY_DATE" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: is_active_contact {
    type: string
    sql: ${TABLE}."IS_ACTIVE_CONTACT" ;;
  }

  dimension: is_active_customer {
    type: string
    sql: ${TABLE}."IS_ACTIVE_CUSTOMER" ;;
  }

  dimension: is_known {
    type: string
    sql: ${TABLE}."IS_KNOWN" ;;
  }

  dimension: is_master_contact {
    type: string
    sql: ${TABLE}."IS_MASTER_CONTACT" ;;
  }

  dimension: is_mobile_client {
    type: number
    sql: ${TABLE}."IS_MOBILE_CLIENT" ;;
  }

  dimension: is_pm {
    type: string
    sql: ${TABLE}."IS_PM" ;;
  }

  dimension: is_store_client {
    type: string
    sql: ${TABLE}."IS_STORE_CLIENT" ;;
  }

  dimension: is_web_client {
    type: string
    sql: ${TABLE}."IS_WEB_CLIENT" ;;
  }

  dimension_group: last_buy {
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
    sql: ${TABLE}."LAST_BUY_DATE" ;;
  }

  dimension: loyalty_card {
    type: string
    sql: ${TABLE}."LOYALTY_CARD" ;;
  }

  dimension: mixity {
    type: string
    sql: ${TABLE}."MIXITY" ;;
  }

  dimension: mobile_number_intl {
    type: string
    sql: ${TABLE}."MOBILE_NUMBER_INTL" ;;
  }

  dimension: mobile_number_local {
    type: string
    sql: ${TABLE}."MOBILE_NUMBER_LOCAL" ;;
  }

  dimension: nb_buys {
    type: number
    sql: ${TABLE}."NB_BUYS" ;;
  }

  dimension: nb_buys_in_store {
    type: number
    sql: ${TABLE}."NB_BUYS_IN_STORE" ;;
  }

  dimension: nb_buys_in_web {
    type: number
    sql: ${TABLE}."NB_BUYS_IN_WEB" ;;
  }

  dimension: nb_orders {
    type: number
    sql: ${TABLE}."NB_ORDERS" ;;
  }

  dimension: nb_orders_with_discount {
    type: number
    sql: ${TABLE}."NB_ORDERS_WITH_DISCOUNT" ;;
  }

  dimension: nb_visits {
    type: number
    sql: ${TABLE}."NB_VISITS" ;;
  }

  dimension: nb_visits_180_days {
    type: number
    sql: ${TABLE}."NB_VISITS_180_DAYS" ;;
  }

  dimension: nb_visits_30_days {
    type: number
    sql: ${TABLE}."NB_VISITS_30_DAYS" ;;
  }

  dimension: nb_visits_365_days {
    type: number
    sql: ${TABLE}."NB_VISITS_365_DAYS" ;;
  }

  dimension: nb_visits_90_days {
    type: number
    sql: ${TABLE}."NB_VISITS_90_DAYS" ;;
  }

  dimension: nb_visits_after_last_purchase {
    type: number
    sql: ${TABLE}."NB_VISITS_AFTER_LAST_PURCHASE" ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}."OPTIN_EMAIL" ;;
  }

  dimension: optin_sms {
    type: string
    sql: ${TABLE}."OPTIN_SMS" ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}."ORDER_DISCOUNT_TF" ;;
  }

  dimension: pct_orders_with_discount {
    type: number
    sql: ${TABLE}."PCT_ORDERS_WITH_DISCOUNT" ;;
  }

  dimension: pm_customer_id_master {
    type: string
    sql: ${TABLE}."PM_CUSTOMER_ID_MASTER" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: segment_1 {
    type: string
    sql: ${TABLE}."SEGMENT_1" ;;
  }

  dimension: segment_2 {
    type: string
    sql: ${TABLE}."SEGMENT_2" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}."TOTAL_AMOUNT" ;;
  }

  dimension: total_amount_mag {
    type: number
    sql: ${TABLE}."TOTAL_AMOUNT_MAG" ;;
  }

  dimension: total_amount_web {
    type: number
    sql: ${TABLE}."TOTAL_AMOUNT_WEB" ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}."TOTAL_DISCOUNT" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: with_card {
    type: string
    sql: ${TABLE}."WITH_CARD" ;;
  }

  dimension: with_email {
    type: string
    sql: ${TABLE}."WITH_EMAIL" ;;
  }

  dimension: with_sms {
    type: string
    sql: ${TABLE}."WITH_SMS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
