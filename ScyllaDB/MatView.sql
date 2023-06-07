CREATE MATERIALIZED VIEW get_locations AS
SELECT location FROM tracking.tracking_data
WHERE location IS NOT NULL AND first_name IS NOT NULL AND last_name IS NOT NULL AND timestamp IS NOT NULL
PRIMARY KEY((location), first_name, last_name, timestamp);