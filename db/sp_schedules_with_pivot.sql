
SET @SQL = ( SELECT GROUP_CONCAT( DISTINCT CONCAT( "case when day='", DAY, "' then concat(time_from, ' - ', time_to) end as ", DAY, "" )) FROM schedules );

SET @SQL = CONCAT( "SELECT Name, ", @SQL, " FROM schedules" );
PREPARE x 
FROM
	@SQL;
EXECUTE x;