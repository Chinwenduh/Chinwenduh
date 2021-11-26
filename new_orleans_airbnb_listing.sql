SELECT * FROM new_orleans_airbnb_listings

----GOT TO KNOW MY DATASET AND FOUND SOME COLUMNS I WONT USE
ALTER TABLE new_orleans_airbnb_listings
DROP column neighborhood_overview, host_location, latitude, longitude, amenities, license, description, name

---finding null in columns and replacing them
SELECT host_response_time
FROM new_orleans_airbnb_listings
WHERE host_response_time IS NULL;

select host_response_time, ISNULL(host_response_time, 'no response') as result
from host_response_time; 

select last_name
     , coalesce(commision_pct, 'No Commission')
from employees;