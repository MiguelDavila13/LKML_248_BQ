connection: "bq_faa"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: bq_migueld_mtr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bq_migueld_mtr_default_datagroup

explore: airports {}

explore: carriers {}

explore: flights {}

