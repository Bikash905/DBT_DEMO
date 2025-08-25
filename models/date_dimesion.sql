select
to_timestamp(TIME) as STARTED_TIME,
DATE(TIME) AS STARTED_DATE,
HOUR(TIME) AS START_HOUR,
{{day_type('TIME')}} AS DAY_TYPE,
{{get_season('TIME')}} AS STATION_OF_YEAR

from {{ source('dev_dbt', 'WEATHER') }}
