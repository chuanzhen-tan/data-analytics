TABLE sales {
  "customer_id" VARCHAR(1)
  "order_date" DATE
  "product_id" INTEGER
}

TABLE menu {
  "product_id" INTEGER
  "product_name" VARCHAR(5)
  "price" INTEGER
}

TABLE members {
  "customer_id" VARCHAR(1)
  "join_date" TIMESTAMP
}

Ref: "sales"."customer_id" > "members"."customer_id"

Ref: "sales"."product_id" > "menu"."product_id"
