view: core_assessment_service__1__assessment_result_event_v001 {
  sql_table_name: wwi_processed_data.core_assessment_service__1__AssessmentResultEvent_v001 ;;

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

view: core_assessment_service__1__AssessmentResultEvent_v001__partitions {
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

view: core_assessment_service__1__AssessmentResultEvent_v001__headers {
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

view: core_assessment_service__1__AssessmentResultEvent_v001__payload__assessment_result {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assessment_name {
    type: string
    sql: ${TABLE}.assessmentName ;;
  }

  dimension: assessment_version {
    type: string
    sql: ${TABLE}.assessmentVersion ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: questions {
    hidden: yes
    sql: ${TABLE}.questions ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }
}

view: core_assessment_service__1__AssessmentResultEvent_v001__payload__assessment_result__questions {
  dimension: parts {
    hidden: yes
    sql: ${TABLE}.parts ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}.questionId ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: core_assessment_service__1__AssessmentResultEvent_v001__payload__assessment_result__questions__parts {
  dimension: answer_type {
    type: string
    sql: ${TABLE}.answerType ;;
  }

  dimension: answers {
    type: string
    sql: ${TABLE}.answers ;;
  }

  dimension: depends_answer {
    type: string
    sql: ${TABLE}.dependsAnswer ;;
  }

  dimension: depends_target {
    type: string
    sql: ${TABLE}.dependsTarget ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.imageName ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.imageUrl ;;
  }

  dimension: inner_label {
    type: string
    sql: ${TABLE}.innerLabel ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.max ;;
  }

  dimension: min {
    type: number
    sql: ${TABLE}.min ;;
  }

  dimension: null_option {
    type: number
    sql: ${TABLE}.nullOption ;;
  }

  dimension: options {
    hidden: yes
    sql: ${TABLE}.options ;;
  }

  dimension: part_id {
    type: string
    sql: ${TABLE}.partId ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.required ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }

  dimension: sub_text {
    type: string
    sql: ${TABLE}.subText ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: core_assessment_service__1__AssessmentResultEvent_v001__payload__assessment_result__questions__parts__options {
  dimension: option_id {
    type: string
    sql: ${TABLE}.optionId ;;
  }

  dimension: sub_text {
    type: string
    sql: ${TABLE}.subText ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: core_assessment_service__1__AssessmentResultEvent_v001__payload {
  dimension: assessment_result {
    hidden: yes
    sql: ${TABLE}.assessmentResult ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }
}
