view: rooming {
  sql_table_name: west_cancer_clinic.rooming ;;

  dimension: _1st_scheduled_appointment {
    type: string
    sql: ${TABLE}._1stScheduledAppointment ;;
  }

  dimension: d_start_date_time {
    type: string
    sql: ${TABLE}.dStartDateTime ;;
  }

  dimension: planned_duration {
    type: number
    sql: ${TABLE}.PlannedDuration ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.Room ;;
  }

  dimension_group: room {
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
    sql: ${TABLE}.RoomTime ;;
  }

  dimension: room_total_time {
    type: number
    sql: ${TABLE}.RoomTotalTime ;;
  }

  dimension: s_location {
    type: string
    sql: ${TABLE}.sLocation ;;
  }

  dimension: s_patient_number {
    type: number
    sql: ${TABLE}.sPatientNumber ;;
  }

  dimension: s_plan {
    type: string
    sql: ${TABLE}.sPlan ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
