connection: "lookerbqwest"

# include all the views
include: "/views/**/*.view"

datagroup: looker_westcancer_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_westcancer_default_datagroup

explore: plan {}

explore: rooming {}
