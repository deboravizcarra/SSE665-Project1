TYPE=VIEW
query=select `tysql`.`customers`.`cust_id` AS `cust_id`,`tysql`.`customers`.`cust_name` AS `cust_name`,`tysql`.`customers`.`cust_email` AS `cust_email` from `tysql`.`customers` where `tysql`.`customers`.`cust_email` is not null
md5=add5fca33546f83920defc458e9ba3a2
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2018-05-30 01:38:39
create-version=2
source=SELECT cust_id, cust_name, cust_email\nFROM Customers\nWHERE cust_email IS NOT NULL
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `tysql`.`customers`.`cust_id` AS `cust_id`,`tysql`.`customers`.`cust_name` AS `cust_name`,`tysql`.`customers`.`cust_email` AS `cust_email` from `tysql`.`customers` where `tysql`.`customers`.`cust_email` is not null
mariadb-version=100215
