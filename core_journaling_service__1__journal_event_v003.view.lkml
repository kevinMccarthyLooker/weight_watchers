view: core_journaling_service__1__journal_event_v003 {
  sql_table_name: wwi_processed_data.core_journaling_service__1__JournalEvent_v003 ;;

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

view: core_journaling_service__1__JournalEvent_v003__partitions {
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

view: core_journaling_service__1__JournalEvent_v003__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.eventType ;;
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

view: core_journaling_service__1__JournalEvent_v003__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: activity_id {
    type: string
    sql: ${TABLE}.activityId ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activityType ;;
  }

  dimension: calories {
    type: number
    sql: ${TABLE}.calories ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completedAt ;;
  }

  dimension: current_weight_in_kgs {
    type: number
    sql: ${TABLE}.currentWeightInKgs ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.eventAt ;;
  }

  dimension: food_id {
    type: string
    sql: ${TABLE}.foodId ;;
  }

  dimension: food_name {
    type: string
    sql: ${TABLE}.foodName ;;
  }

  dimension: food_type {
    type: string
    sql: ${TABLE}.foodType ;;
  }

  dimension: food_version {
    type: string
    sql: ${TABLE}.foodVersion ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.lastUpdated ;;
  }

  dimension: meal_id {
    type: string
    sql: ${TABLE}.mealId ;;
  }

  dimension: meal_version {
    type: string
    sql: ${TABLE}.mealVersion ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: portion_id {
    type: string
    sql: ${TABLE}.portionId ;;
  }

  dimension: portion_size {
    type: number
    sql: ${TABLE}.portionSize ;;
  }

  dimension: ppv {
    type: number
    sql: ${TABLE}.ppv ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: spv {
    type: number
    sql: ${TABLE}.spv ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.timeOfDay ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_alt_id {
    type: string
    sql: ${TABLE}.userAltId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }
}
