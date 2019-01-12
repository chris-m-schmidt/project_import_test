include: "/acme_base_project/order_items.view.lkml"

view: order_items_for_sales_team {
  extends: [order_items]

  measure: new_measure_for_sales_team {
    type: count_distinct
    sql: ${user_id} ;;
  }
}
