view: anonyme_dl_products {
  sql_table_name: "CA"."ANONYME_DL_PRODUCTS"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: product_code_lvl_0 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_0" ;;
  }

  dimension: product_code_lvl_1 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_1" ;;
  }

  dimension: product_code_lvl_2 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_2" ;;
  }

  dimension: product_code_lvl_3 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_3" ;;
  }

  dimension: product_code_lvl_4 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_4" ;;
  }

  dimension: product_code_lvl_5 {
    type: number
    sql: ${TABLE}."PRODUCT_CODE_LVL_5" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_label_lvl_0 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_0" ;;
  }

  dimension: product_label_lvl_1 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_1" ;;
  }

  dimension: product_label_lvl_2 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_2" ;;
  }

  dimension: product_label_lvl_3 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_3" ;;
  }

  dimension: product_label_lvl_4 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_4" ;;
  }

  dimension: product_label_lvl_5 {
    type: number
    sql: ${TABLE}."PRODUCT_LABEL_LVL_5" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_number_of_ratings {
    type: number
    sql: ${TABLE}."PRODUCT_NUMBER_OF_RATINGS" ;;
  }

  dimension: product_price_currency {
    type: number
    sql: ${TABLE}."PRODUCT_PRICE_CURRENCY" ;;
  }

  dimension: product_rating {
    type: number
    sql: ${TABLE}."PRODUCT_RATING" ;;
  }

  dimension: product_type {
    type: number
    sql: ${TABLE}."PRODUCT_TYPE" ;;
  }

  dimension: product_unit_price {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_PRICE" ;;
  }

  dimension: product_unit_price_tf {
    type: number
    sql: ${TABLE}."PRODUCT_UNIT_PRICE_TF" ;;
  }

  dimension: story_nature {
    type: string
    sql: ${TABLE}."STORY_NATURE" ;;
  }

  dimension: story_universe {
    type: string
    sql: ${TABLE}."STORY_UNIVERSE" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
