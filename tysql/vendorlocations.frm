TYPE=VIEW
query=select concat(`tysql`.`vendors`.`vend_name`,\' (\',`tysql`.`vendors`.`vend_country`,\')\') AS `vend_title` from `tysql`.`vendors`
md5=5523814397b9343dadc957e214f3fb62
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2018-05-30 01:38:39
create-version=2
source=SELECT Concat(vend_name, \' (\', vend_country, \')\')\n	   AS vend_title\nFROM Vendors
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select concat(`tysql`.`vendors`.`vend_name`,\' (\',`tysql`.`vendors`.`vend_country`,\')\') AS `vend_title` from `tysql`.`vendors`
mariadb-version=100215
