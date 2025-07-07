/*Region*/

data temp.region;
 set survey.demo;
 if H_CENSUS in ("01", "02") then REGION = 1; /*Northeast*/
 else if H_CENSUS in ("03", "04") then REGION = 2;	/*Midwest*/
 else if H_CENSUS in ("05", "06", "07")	then REGION = 3; /*South*/
 else if H_CENSUS in ("08", "09") then REGION = 4; /*West*/
run;	
