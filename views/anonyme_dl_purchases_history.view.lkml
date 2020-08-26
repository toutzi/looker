view: anonyme_dl_purchases_history {
  sql_table_name: "CA"."ANONYME_DL_PURCHASES_HISTORY"
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}."AGE_RANGE" ;;
  }

  dimension_group: current_ {
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
    sql: ${TABLE}."CURRENT__DATE" ;;
  }

  dimension: customer_id_master {
    type: string
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}."CUSTOMER_VALUE" ;;
  }

  dimension: delta_12 {
    type: number
    sql: ${TABLE}."DELTA_12" ;;
  }

  dimension: delta_12_range {
    type: string
    sql: ${TABLE}."DELTA_12_RANGE" ;;
  }

  dimension: delta_last {
    type: number
    sql: ${TABLE}."DELTA_LAST" ;;
  }

  dimension: delta_last_range {
    type: number
    sql: ${TABLE}."DELTA_LAST_RANGE" ;;
  }

  dimension: first_city {
    type: number
    sql: ${TABLE}."FIRST_CITY" ;;
  }

  dimension: first_country {
    type: number
    sql: ${TABLE}."FIRST_COUNTRY" ;;
  }

  dimension: first_discount {
    type: number
    sql: ${TABLE}."FIRST_DISCOUNT" ;;
  }

  dimension: first_latitude {
    type: number
    sql: ${TABLE}."FIRST_LATITUDE" ;;
  }

  dimension: first_longitude {
    type: number
    sql: ${TABLE}."FIRST_LONGITUDE" ;;
  }

  dimension: first_margin {
    type: number
    sql: ${TABLE}."FIRST_MARGIN" ;;
  }

  dimension: first_most_expensive_product_price {
    type: number
    sql: ${TABLE}."FIRST_MOST_EXPENSIVE_PRODUCT_PRICE" ;;
  }

  dimension: first_nb_articles {
    type: number
    sql: ${TABLE}."FIRST_NB_ARTICLES" ;;
  }

  dimension: first_order_id {
    type: string
    sql: ${TABLE}."FIRST_ORDER_ID" ;;
  }

  dimension: first_postal_code {
    type: number
    sql: ${TABLE}."FIRST_POSTAL_CODE" ;;
  }

  dimension: first_product_id {
    type: string
    sql: ${TABLE}."FIRST_PRODUCT_ID" ;;
  }

  dimension: first_product_name {
    type: string
    sql: ${TABLE}."FIRST_PRODUCT_NAME" ;;
  }

  dimension: first_product_nature {
    type: string
    sql: ${TABLE}."FIRST_PRODUCT_NATURE" ;;
  }

  dimension: first_product_universe {
    type: string
    sql: ${TABLE}."FIRST_PRODUCT_UNIVERSE" ;;
  }

  dimension: first_product_universe_nb_orders {
    type: number
    sql: ${TABLE}."FIRST_PRODUCT_UNIVERSE_NB_ORDERS" ;;
  }

  dimension: first_product_universe_simplified {
    type: string
    sql: ${TABLE}."FIRST_PRODUCT_UNIVERSE_SIMPLIFIED" ;;
  }

  dimension_group: first_purchase {
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
    sql: ${TABLE}."FIRST_PURCHASE_DATE" ;;
  }

  dimension: first_store_id {
    type: number
    sql: ${TABLE}."FIRST_STORE_ID" ;;
  }

  dimension: first_store_name {
    type: number
    sql: ${TABLE}."FIRST_STORE_NAME" ;;
  }

  dimension: first_store_type {
    type: string
    sql: ${TABLE}."FIRST_STORE_TYPE" ;;
  }

  dimension: first_store_type_ext {
    type: string
    sql: ${TABLE}."FIRST_STORE_TYPE_EXT" ;;
  }

  dimension: first_total_amount {
    type: number
    sql: ${TABLE}."FIRST_TOTAL_AMOUNT" ;;
  }

  dimension: is_known {
    type: string
    sql: ${TABLE}."IS_KNOWN" ;;
  }

  dimension: is_mono_buyer {
    type: string
    sql: ${TABLE}."IS_MONO_BUYER" ;;
  }

  dimension: is_pm {
    type: string
    sql: ${TABLE}."IS_PM" ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}."OPTIN_EMAIL" ;;
  }

  dimension: optin_sms {
    type: string
    sql: ${TABLE}."OPTIN_SMS" ;;
  }

  dimension: second_city {
    type: number
    sql: ${TABLE}."SECOND_CITY" ;;
  }

  dimension: second_country {
    type: number
    sql: ${TABLE}."SECOND_COUNTRY" ;;
  }

  dimension: second_discount {
    type: number
    sql: ${TABLE}."SECOND_DISCOUNT" ;;
  }

  dimension: second_latitude {
    type: number
    sql: ${TABLE}."SECOND_LATITUDE" ;;
  }

  dimension: second_longitude {
    type: number
    sql: ${TABLE}."SECOND_LONGITUDE" ;;
  }

  dimension: second_margin {
    type: number
    sql: ${TABLE}."SECOND_MARGIN" ;;
  }

  dimension: second_most_expensive_product_price {
    type: number
    sql: ${TABLE}."SECOND_MOST_EXPENSIVE_PRODUCT_PRICE" ;;
  }

  dimension: second_nb_articles {
    type: number
    sql: ${TABLE}."SECOND_NB_ARTICLES" ;;
  }

  dimension: second_order_customer_id_master {
    type: string
    sql: ${TABLE}."SECOND_ORDER_CUSTOMER_ID_MASTER" ;;
  }

  dimension: second_order_id {
    type: string
    sql: ${TABLE}."SECOND_ORDER_ID" ;;
  }

  dimension: second_postal_code {
    type: number
    sql: ${TABLE}."SECOND_POSTAL_CODE" ;;
  }

  dimension: second_product_id {
    type: string
    sql: ${TABLE}."SECOND_PRODUCT_ID" ;;
  }

  dimension: second_product_name {
    type: string
    sql: ${TABLE}."SECOND_PRODUCT_NAME" ;;
  }

  dimension: second_product_nature {
    type: string
    sql: ${TABLE}."SECOND_PRODUCT_NATURE" ;;
  }

  dimension: second_product_universe {
    type: string
    sql: ${TABLE}."SECOND_PRODUCT_UNIVERSE" ;;
  }

  dimension: second_product_universe_simplified {
    type: string
    sql: ${TABLE}."SECOND_PRODUCT_UNIVERSE_SIMPLIFIED" ;;
  }

  dimension_group: second_purchase {
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
    sql: ${TABLE}."SECOND_PURCHASE_DATE" ;;
  }

  dimension: second_store_id {
    type: number
    sql: ${TABLE}."SECOND_STORE_ID" ;;
  }

  dimension: second_store_name {
    type: number
    sql: ${TABLE}."SECOND_STORE_NAME" ;;
  }

  dimension: second_store_type {
    type: string
    sql: ${TABLE}."SECOND_STORE_TYPE" ;;
  }

  dimension: second_store_type_ext {
    type: string
    sql: ${TABLE}."SECOND_STORE_TYPE_EXT" ;;
  }

  dimension: second_total_amount {
    type: number
    sql: ${TABLE}."SECOND_TOTAL_AMOUNT" ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}."TARGET" ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [second_product_name, first_store_name, second_store_name, first_product_name]
  }

  measure: Nbre_de_reacheteurs {
    type: count_distinct
    sql: ${TABLE}."SECOND_ORDER_CUSTOMER_ID_MASTER" ;;
  }

  measure: Nbre_contacts_maitres {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
  }

  measure: Taux_de_reachat {
    type: number
    sql: ${Nbre_de_reacheteurs} / ${Nbre_contacts_maitres} ;;
  }

  measure: Montant_1er_achat {
    type: average
    sql: ${TABLE}."FIRST_TOTAL_AMOUNT" ;;
    filters: [second_order_id: "-NULL"]
  }

  measure: Montant_2eme_achat {
    type: average
    sql: ${TABLE}."SECOND_TOTAL_AMOUNT" ;;
    filters: [second_order_id: "-NULL"]
  }

  measure: Delai_de_reachat_j {
    type: average
    sql: ${TABLE}."DELTA_12" ;;
  }

  measure: Nb_1er_achat {
    type: count_distinct
    sql: ${TABLE}."FIRST_ORDER_ID" ;;
  }

  measure: CA_1er_achat {
    type: sum
    sql: ${TABLE}."FIRST_TOTAL_AMOUNT" ;;
  }

  measure: CA_reachat {
    type: sum
    sql: ${TABLE}."SECOND_TOTAL_AMOUNT" ;;
  }

  measure: Taux_de_reachat_univers {
    type: number
    sql: ${Nbre_de_reacheteurs_first} / ${Nbre_contacts_first_product} ;;
  }

  measure: Nbre_de_reacheteurs_first {
    type: count_distinct
    sql: ${TABLE}."SECOND_ORDER_CUSTOMER_ID" ;;
    filters: [first_product_universe: "-NULL", first_product_nature: "-NULL", first_product_nature: "N.R", first_product_universe_nb_orders: ">=50" ]
  }

  measure: Nbre_contacts_first_product {
    type: count_distinct
    sql: ${TABLE}."CUSTOMER_ID_MASTER" ;;
    filters: [first_product_universe: "-NULL", first_product_nature: "-NULL", first_product_nature: "N.R", first_product_universe_nb_orders: ">=50" ]
  }

  measure: Nbre_reachat {
    type: count_distinct
    sql: ${TABLE}."SECOND_ORDER_ID" ;;
    filters: [first_product_universe: "-NULL", second_order_id: "-NULL"]
  }
}
