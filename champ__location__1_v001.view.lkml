view: champ__location__1_v001 {
  sql_table_name: wwi_processed_data.champ__LOCATION__1_v001 ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: champ__LOCATION__1_v001__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}

view: champ__LOCATION__1_v001__payload {
  dimension: active_flag {
    type: string
    sql: ${TABLE}.active_flag ;;
  }

  dimension: area_site_id {
    type: number
    sql: ${TABLE}.area_site_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: county_id {
    type: string
    sql: ${TABLE}.county_id ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: credit_card_enabled {
    type: string
    sql: ${TABLE}.credit_card_enabled ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: gd_city {
    type: string
    sql: ${TABLE}.gd_city ;;
  }

  dimension: is_tax_collected {
    type: string
    sql: ${TABLE}.is_tax_collected ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension_group: last_upd {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_address1 {
    type: string
    sql: ${TABLE}.location_address1 ;;
  }

  dimension: location_address2 {
    type: string
    sql: ${TABLE}.location_address2 ;;
  }

  dimension: location_desc {
    type: string
    sql: ${TABLE}.location_desc ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_no {
    type: string
    sql: ${TABLE}.location_no ;;
  }

  dimension: location_step {
    type: number
    sql: ${TABLE}.location_step ;;
  }

  dimension: location_type_id {
    type: number
    sql: ${TABLE}.location_type_id ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: mp_activation_enabled {
    type: string
    sql: ${TABLE}.mp_activation_enabled ;;
  }

  dimension: non_tangible_pr_id {
    type: string
    sql: ${TABLE}.non_tangible_pr_id ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: tangible_pr_id {
    type: string
    sql: ${TABLE}.tangible_pr_id ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
}
