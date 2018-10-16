include: "/acme_base_project/order_items.view.lkml"

view: order_items_extended {
  extends: [order_items]

  measure: new_measure_for_order_items_extended {
    type: count_distinct
    sql: ${user_id} ;;
  }
}
