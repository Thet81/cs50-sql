select city,type,count(*) as total from schools where "type" like "%public%" group by "city" having "total" <=3 order by "total" desc, "city";
