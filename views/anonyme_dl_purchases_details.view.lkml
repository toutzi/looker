view: anonyme_dl_purchases_details {
  sql_table_name: "CA"."ANONYME_DL_PURCHASES_DETAILS"
    ;;

  dimension: age_range {
    type: string
    sql: ${TABLE}."AGE_RANGE" ;;
  }

  dimension: city {
    type: number
    sql: ${TABLE}."CITY" ;;
  }

  dimension: contributive_line_amount {
    type: number
    sql: ${TABLE}."CONTRIBUTIVE_LINE_AMOUNT" ;;
  }

  dimension: country {
    type: number
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: country_code {
    type: number
    sql: ${TABLE}."COUNTRY_CODE" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  measure: Nbre_clients_call {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID" ;;
    filters: [mixity: "CALL"]
  }

  measure: Nbre_clients_internet {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID" ;;
    filters: [mixity: "INT"]
  }
  measure: Nbre_clients_mail {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID" ;;
    filters: [mixity: "MAIL"]
  }

  measure: Nbre_clientss_mixtes {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID" ;;
    filters: [mixity: "MIXTE"]
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE" ;;
  }

  dimension: customer_value_ratio {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE_RATIO" ;;
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

  dimension: is_active_contact {
    type: string
    sql: ${TABLE}."IS_ACTIVE_CONTACT" ;;
  }

  dimension: is_cancelled {
    type: string
    sql: ${TABLE}."IS_CANCELLED" ;;
  }

  dimension: is_known {
    type: string
    sql: ${TABLE}."IS_KNOWN" ;;
  }

  dimension: is_known_customer {
    type: string
    sql: ${TABLE}."IS_KNOWN_CUSTOMER" ;;
  }

  dimension: is_mobile_client {
    type: number
    sql: ${TABLE}."IS_MOBILE_CLIENT" ;;
  }

  dimension: is_pm {
    type: string
    sql: ${TABLE}."IS_PM" ;;
  }

  dimension: is_purchase_in_ref_period {
    type: string
    sql: ${TABLE}."IS_PURCHASE_IN_REF_PERIOD" ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}."LINE_AMOUNT" ;;
  }

  measure: panier_moyen_mixite_non_null {
    type: number
    sql: ${CA_mixite_non_null} / ${Nbre_commandes_mixite_non_null} ;;
  }

  measure: Nbre_commandes_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "-NULL"]
  }

  measure: valeur_client {
    type: number
    sql: ${CA} / ${nb_clients} ;;
  }

  measure: CA {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
  }

  measure: frequence_d_achat {
    type: number
    sql: ${Nbre_commandes} / ${nb_clients} ;;
  }

  measure: panier_moyen {
    type: number
    sql: ${CA} / ${Nbre_commandes} ;;
  }

  measure: moyenne_des_interactions_digitales {
    type: average
    sql: ${nb_contributive_visits} ;;
  }

  measure: Nbre_commandes {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
  }

  measure: nb_clients {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
  }

  measure: Onboarding_CRM {
    type: number
    sql: ${CA_know} / ${nb_clients_actifs} ;;
  }

  measure: CA_know {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [is_known: "true"]
  }

  measure: nb_clients_actifs {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
    filters: [is_active_contact: "true"]
  }

  measure: valeur_client_mixite_non_null {
    type: number
    sql: ${CA_mixite_non_null} / ${nb_clients_actifs_mixite_non_null} ;;
  }

  measure: CA_mixite_non_null {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [mixity: "-NULL" ]
  }

  measure: nb_clients_actifs_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID" ;;
    filters: [mixity: "-NULL"]
  }

  measure: frequence_d_achat_mixite_non_null {
    type: number
    sql: ${nbre_commandes_mixite_non_null} / ${nb_clients_actifs_mixite_non_null} ;;
  }

  measure: nbre_commandes_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "-NULL" ]
  }

  measure: ca_mail_influence {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [with_contributive_visits: "true"]
  }

  measure: ca_call {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [mixity: "CALL"]
  }

  measure: ca_internet {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [mixity: "INT"]
  }

  measure: ca_mail {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [mixity: "MAIL"]
  }

  measure: ca_mixtes {
    type: sum
    sql: ${TABLE}."LINE_AMOUNT" ;;
    filters: [mixity: "mixte"]
  }

  dimension: line_custom_1 {
    type: number
    sql: ${TABLE}."LINE_CUSTOM_1" ;;
  }

  dimension: line_custom_2 {
    type: number
    sql: ${TABLE}."LINE_CUSTOM_2" ;;
  }

  dimension: line_custom_3 {
    type: number
    sql: ${TABLE}."LINE_CUSTOM_3" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: loyalty_card {
    type: string
    sql: ${TABLE}."LOYALTY_CARD" ;;
  }

  dimension: mixity {
    type: string
    sql: ${TABLE}."MIXITY" ;;
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

  dimension: nb_contributive_visits {
    type: number
    sql: ${TABLE}."NB_CONTRIBUTIVE_VISITS" ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}."OPTIN_EMAIL" ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}."ORDER_DISCOUNT_TF" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  measure: Nbre_commandes_call {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "CALL"]
  }

  measure: Nbre_commandes_internet {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "INT"]
  }

  measure: Nbre_commandes_mail {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "MAIL"]
  }

  measure: Nbre_commandes_mixtes {
    type: count_distinct
    sql: ${TABLE}."ORDER_ID" ;;
    filters: [mixity: "mixte"]
  }

  dimension: order_rank {
    type: number
    sql: ${TABLE}."ORDER_RANK" ;;
  }

  dimension: pm_customer_id_master {
    type: string
    sql: ${TABLE}."PM_CUSTOMER_ID_MASTER" ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: price_rank {
    type: number
    sql: ${TABLE}."PRICE_RANK" ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}."PRODUCT_BRAND" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_nature {
    type: string
    sql: ${TABLE}."PRODUCT_NATURE" ;;
  }

  dimension: product_qty {
    type: number
    sql: ${TABLE}."PRODUCT_QTY" ;;
  }

  dimension: product_ranking {
    type: number
    sql: ${TABLE}."PRODUCT_RANKING" ;;
  }

  dimension: product_type {
    type: number
    sql: ${TABLE}."PRODUCT_TYPE" ;;
  }

  dimension: product_unit_discount_tf {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_DISCOUNT_TF" ;;
  }

  dimension: product_unit_price_tf {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_PRICE_TF" ;;
  }

  dimension: product_universe {
    type: string
    sql: ${TABLE}."PRODUCT_UNIVERSE" ;;
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

  dimension: sales_type {
    type: string
    sql: ${TABLE}."SALES_TYPE" ;;
  }

  dimension: sales_type_identified {
    type: string
    sql: ${TABLE}."SALES_TYPE_IDENTIFIED" ;;
  }

  dimension: sales_type_omnichannel {
    type: string
    sql: ${TABLE}."SALES_TYPE_OMNICHANNEL" ;;
  }

  dimension: segment_1 {
    type: string
    sql: ${TABLE}."SEGMENT_1" ;;
  }

  dimension: segment_2 {
    type: string
    sql: ${TABLE}."SEGMENT_2" ;;
  }

  dimension: status_ropo {
    type: string
    sql: ${TABLE}."STATUS_ROPO" ;;
  }

  dimension: store_country_code {
    type: string
    sql: ${TABLE}."STORE_COUNTRY_CODE" ;;
  }

  dimension: store_group_code {
    type: number
    sql: ${TABLE}."STORE_GROUP_CODE" ;;
  }

  dimension: store_group_name {
    type: number
    sql: ${TABLE}."STORE_GROUP_NAME" ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: store_name {
    type: number
    sql: ${TABLE}."STORE_NAME" ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}."STORE_TYPE" ;;
  }

  dimension: top_product_10_rk {
    type: string
    sql: ${TABLE}."TOP_PRODUCT_10RK" ;;
  }

  dimension: top_product_80_pct {
    type: string
    sql: ${TABLE}."TOP_PRODUCT_80PCT" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: with_card {
    type: string
    sql: ${TABLE}."WITH_CARD" ;;
  }

  dimension: with_contributive_visits {
    type: string
    sql: ${TABLE}."WITH_CONTRIBUTIVE_VISITS" ;;
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
    drill_fields: [store_name, store_group_name, product_name]
  }
}
