include: "/acme_base_project/order_items.view.lkml"

view: cool {
  extends: [order_items]

  measure: your_extension_worked_dude_you_cant_miss_the_name_of_this_field {
    type: count_distinct
    sql: ${user_id} ;;
  }
}
