view: plan {
  sql_table_name: west_cancer_clinic.plan ;;

  dimension_group: apptdate {
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
    sql: ${TABLE}.APPTDateTime ;;
  }

  dimension_group: d_start_date {
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
    sql: ${TABLE}.dStartDateTime ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: exp_duration {
    type: string
    sql: ${TABLE}.ExpDuration ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.Plan ;;
  }

  dimension: s_location {
    type: string
    sql: ${TABLE}.sLocation ;;
  }

  dimension: s_patient_number {
    type: number
    sql: ${TABLE}.sPatientNumber ;;
  }

  dimension: sched_time {
    type: string
    sql: ${TABLE}.SchedTime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
