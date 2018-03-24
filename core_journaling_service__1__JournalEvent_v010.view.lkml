view: core_journaling_service__1__JournalEvent_v010 {
  sql_table_name: wwi_processed_data.core_journaling_service__1__JournalEvent_v010 ;;

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

#   measure: count {
#     type: count
#     drill_fields: []
#   }
}

view: core_journaling_service__1__JournalEvent_v010__partitions {
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

view: core_journaling_service__1__JournalEvent_v010__headers {
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

view: core_journaling_service__1__JournalEvent_v010__payload {
  sql_table_name: wwi_raw_data.core_journaling_service__1__JournalEvent;;
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
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

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
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

  dimension: food_alt_id {
    type: string
    sql: ${TABLE}.foodAltId ;;
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

  dimension: intensity {
    type: number
    sql: ${TABLE}.intensity ;;
  }

  dimension: is_ambulatory {
    type: yesno
    sql: ${TABLE}.isAmbulatory ;;
  }

  dimension: is_core {
    type: yesno
    sql: ${TABLE}.isCore ;;
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

  dimension: points_per_serving {
    type: number
    sql: ${TABLE}.pointsPerServing ;;
  }

  dimension: portion_id {
    type: string
    sql: ${TABLE}.portionId ;;
  }

  dimension: portion_measurement {
    type: string
    sql: ${TABLE}.portionMeasurement ;;
  }

  dimension: portion_size {
    type: number
    sql: ${TABLE}.portionSize ;;
  }

  dimension: ppv {
    type: number
    sql: ${TABLE}.ppv ;;
  }

  dimension: quick_add_food_id {
    type: string
    sql: ${TABLE}.quickAddFoodId ;;
  }

  dimension: smart_points {
    type: number
    sql: ${TABLE}.smartPoints ;;
  }

  dimension: smart_points_per_serving {
    type: number
    sql: ${TABLE}.smartPointsPerServing ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: spv {
    type: number
    sql: ${TABLE}.spv ;;
  }

  dimension: steps {
    type: number
    sql: ${TABLE}.steps ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.timeOfDay ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
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

  dimension: weight_id {
    type: string
    sql: ${TABLE}.weightId ;;
  }
}

#####################
view: core_journaling_service__1__JournalEvent_v010_km {
  sql_table_name: wwi_processed_data.core_journaling_service__1__JournalEvent_v010 ;;

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

#   measure: count {
#     type: count
#     drill_fields: []
#   }

  dimension: day {
    type: string
    sql: ${partitions}.day ;;
  }

  dimension: hour {
    type: string
    sql: ${partitions}.hour ;;
  }

  dimension: month {
    type: string
    sql: ${partitions}.month ;;
  }

  dimension: year {
    type: string
    sql: ${partitions}.year ;;
  }

  dimension: action {
    type: string
    sql: ${headers}.action ;;
  }

  dimension: event_type {
    type: string
    sql: ${headers}.eventType ;;
  }

  dimension: message_id {
    primary_key: yes
    type: string
    sql: ${headers}.messageId ;;
  }

  dimension: headers__source {
    type: string
    sql: ${headers}.source ;;
  }

  dimension: id {
    type: string
    sql: ${payload}.id ;;
  }
  measure: count {
    type: count
  }

  dimension: activity_id {
    type: string
    sql: ${payload}.activityId ;;
  }

  dimension: activity_type {
    type: string
    sql: ${payload}.activityType ;;
  }

  dimension: calories {
    type: number
    sql: ${payload}.calories ;;
  }

  dimension: code {
    type: string
    sql: ${payload}.code ;;
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
    sql: ${payload}.completedAt ;;
  }

  dimension: current_weight_in_kgs {
    type: number
    sql: ${payload}.currentWeightInKgs ;;
  }

  dimension: date {
    type: string
    sql: ${payload}.date ;;
  }

  dimension: duration {
    type: number
    sql: ${payload}.duration ;;
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
    sql: ${payload}.eventAt ;;
  }

  dimension: food_alt_id {
    type: string
    sql: ${payload}.foodAltId ;;
  }

  dimension: food_id {
    type: string
    sql: ${payload}.foodId ;;
  }

  dimension: food_name {
    type: string
    sql: ${payload}.foodName ;;
  }

  dimension: food_type {
    type: string
    sql: ${payload}.foodType ;;
  }

  dimension: food_version {
    type: string
    sql: ${payload}.foodVersion ;;
  }

  dimension: intensity {
    type: number
    sql: ${payload}.intensity ;;
  }

  dimension: is_ambulatory {
    type: yesno
    sql: ${payload}.isAmbulatory ;;
  }

  dimension: is_core {
    type: yesno
    sql: ${payload}.isCore ;;
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
    sql: ${payload}.lastUpdated ;;
  }

  dimension: meal_id {
    type: string
    sql: ${payload}.mealId ;;
  }

  dimension: meal_version {
    type: string
    sql: ${payload}.mealVersion ;;
  }

  dimension: name {
    type: string
    sql: ${payload}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${payload}.notes ;;
  }

  dimension: points {
    type: number
    sql: ${payload}.points ;;
  }

  dimension: points_per_serving {
    type: number
    sql: ${payload}.pointsPerServing ;;
  }

  dimension: portion_id {
    type: string
    sql: ${payload}.portionId ;;
  }

  dimension: portion_measurement {
    type: string
    sql: ${payload}.portionMeasurement ;;
  }

  dimension: portion_size {
    type: number
    sql: ${payload}.portionSize ;;
  }

  dimension: ppv {
    type: number
    sql: ${payload}.ppv ;;
  }

  dimension: quick_add_food_id {
    type: string
    sql: ${payload}.quickAddFoodId ;;
  }

  dimension: smart_points {
    type: number
    sql: ${payload}.smartPoints ;;
  }

  dimension: smart_points_per_serving {
    type: number
    sql: ${payload}.smartPointsPerServing ;;
  }

  dimension: payload__source {
    type: string
    sql: ${payload}.source ;;
  }

  dimension: spv {
    type: number
    sql: ${payload}.spv ;;
  }

  dimension: steps {
    type: number
    sql: ${payload}.steps ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${payload}.timeOfDay ;;
  }

  dimension: timestamp {
    type: string
    sql: ${payload}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${payload}.type ;;
  }

  dimension: units {
    type: string
    sql: ${payload}.units ;;
  }

  dimension: user_agent {
    type: string
    sql: ${payload}.user_agent ;;
  }

  dimension: user_alt_id {
    type: string
    sql: ${payload}.userAltId ;;
  }

  dimension: user_id {
    type: string
    sql: ${payload}.userId ;;
  }

  dimension: weight {
    type: number
    sql: ${payload}.weight ;;
  }

  dimension: weight_id {
    type: string
    sql: ${payload}.weightId ;;
  }
}
