TYPE=VIEW
query=select `tysql`.`customers`.`cust_name` AS `cust_name`,`tysql`.`customers`.`cust_contact` AS `cust_contact`,`tysql`.`orderitems`.`prod_id` AS `prod_id` from `tysql`.`customers` join `tysql`.`orders` join `tysql`.`orderitems` where `tysql`.`customers`.`cust_id` = `tysql`.`orders`.`cust_id` and `tysql`.`orderitems`.`order_num` = `tysql`.`orders`.`order_num`
md5=ada172af05c50f8d3205276b2e31636a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2018-05-30 01:38:39
create-version=2
source=SELECT cust_name, cust_contact, prod_id\nFROM Customers, Orders, OrderItems\nWHERE Customers.cust_id = Orders.cust_id\n  AND OrderItems.order_num = Orders.order_num
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `tysql`.`customers`.`cust_name` AS `cust_name`,`tysql`.`customers`.`cust_contact` AS `cust_contact`,`tysql`.`orderitems`.`prod_id` AS `prod_id` from `tysql`.`customers` join `tysql`.`orders` join `tysql`.`orderitems` where `tysql`.`customers`.`cust_id` = `tysql`.`orders`.`cust_id` and `tysql`.`orderitems`.`order_num` = `tysql`.`orders`.`order_num`
mariadb-version=100215
