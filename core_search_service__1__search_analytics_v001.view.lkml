view: core_search_service__1__search_analytics_v001 {
  sql_table_name: wwi_processed_data.core_search_service__1__searchAnalytics_v001 ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: partitions {
    hidden: yes
    sql: ${TABLE}.partitions ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: core_search_service__1__searchAnalytics_v001__partitions {
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

view: core_search_service__1__searchAnalytics_v001__payload {
  dimension: app_version {
    type: string
    sql: ${TABLE}.appVersion ;;
  }

  dimension: browsed_details {
    hidden: yes
    sql: ${TABLE}.browsedDetails ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: exit_mode {
    type: string
    sql: ${TABLE}.exitMode ;;
  }

  dimension: full_query {
    type: string
    sql: ${TABLE}.fullQuery ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.sessionId ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.timeSpent ;;
  }

  dimension: tracked_details {
    hidden: yes
    sql: ${TABLE}.trackedDetails ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}

view: core_search_service__1__searchAnalytics_v001__payload__browsed_details {
  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: default_portion_description {
    type: string
    sql: ${TABLE}.defaultPortionDescription ;;
  }

  dimension: default_portion_id {
    type: string
    sql: ${TABLE}.defaultPortionId ;;
  }

  dimension: default_portion_quantity {
    type: number
    sql: ${TABLE}.defaultPortionQuantity ;;
  }

  dimension: food_id {
    type: string
    sql: ${TABLE}.foodId ;;
  }

  dimension: search_position {
    type: number
    sql: ${TABLE}.searchPosition ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.searchTerm ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }
}

view: core_search_service__1__searchAnalytics_v001__payload__tracked_details {
  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: default_portion_description {
    type: string
    sql: ${TABLE}.defaultPortionDescription ;;
  }

  dimension: default_portion_id {
    type: string
    sql: ${TABLE}.defaultPortionId ;;
  }

  dimension: default_portion_quantity {
    type: number
    sql: ${TABLE}.defaultPortionQuantity ;;
  }

  dimension: food_id {
    type: string
    sql: ${TABLE}.foodId ;;
  }

  dimension: search_position {
    type: number
    sql: ${TABLE}.searchPosition ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.searchTerm ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tracked_portion_description {
    type: string
    sql: ${TABLE}.trackedPortionDescription ;;
  }

  dimension: tracked_portion_id {
    type: string
    sql: ${TABLE}.trackedPortionId ;;
  }

  dimension: tracked_quantity {
    type: number
    sql: ${TABLE}.trackedQuantity ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }
}
