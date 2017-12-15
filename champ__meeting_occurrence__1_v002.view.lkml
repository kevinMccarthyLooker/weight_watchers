view: champ__meeting_occurrence__1_v002 {
  sql_table_name: wwi_processed_data.champ__MEETING_OCCURRENCE__1_v002 ;;

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

view: champ__MEETING_OCCURRENCE__1_v002__headers {
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

view: champ__MEETING_OCCURRENCE__1_v002__payload {
  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
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

  dimension: day_time_code_id {
    type: string
    sql: ${TABLE}.day_time_code_id ;;
  }

  dimension: dtc_time {
    type: number
    sql: ${TABLE}.dtc_time ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
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

  dimension: leader_employee_id {
    type: string
    sql: ${TABLE}.leader_employee_id ;;
  }

  dimension: line_of_business_id {
    type: number
    sql: ${TABLE}.line_of_business_id ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: ma_meeting_id {
    type: number
    sql: ${TABLE}.ma_meeting_id ;;
  }

  dimension: meeting_number {
    type: number
    sql: ${TABLE}.meeting_number ;;
  }

  dimension: meeting_occurrence_id {
    type: number
    sql: ${TABLE}.meeting_occurrence_id ;;
  }

  dimension: meeting_occurrence_status_id {
    type: number
    sql: ${TABLE}.meeting_occurrence_status_id ;;
  }

  dimension: meeting_type_id {
    type: number
    sql: ${TABLE}.meeting_type_id ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
}
