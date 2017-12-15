view: champ__1__meeting_v001 {
  sql_table_name: wwi_processed_data.champ__1__MEETING_v001 ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: partitions {
    hidden: yes
    sql: ${TABLE}.partitions ;;
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

view: champ__1__MEETING_v001__partitions {
  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
}

view: champ__1__MEETING_v001__headers {
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

view: champ__1__MEETING_v001__payload {
  dimension: bankcount {
    type: number
    sql: ${TABLE}.bankcount ;;
  }

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

  dimension_group: meeting {
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
    sql: ${TABLE}.meeting_date ;;
  }

  dimension: meeting_id {
    type: number
    sql: ${TABLE}.meeting_id ;;
  }

  dimension: meeting_occurrence_id {
    type: number
    sql: ${TABLE}.meeting_occurrence_id ;;
  }

  dimension: meeting_status_id {
    type: number
    sql: ${TABLE}.meeting_status_id ;;
  }

  dimension: tally_process_monitor_id {
    type: number
    sql: ${TABLE}.tally_process_monitor_id ;;
  }

  dimension: tally_status_id {
    type: number
    sql: ${TABLE}.tally_status_id ;;
  }

  dimension: transfer_status_id {
    type: number
    sql: ${TABLE}.transfer_status_id ;;
  }
}
