with source as (
 
    select * from {{source('yandex','raw_delivery') }}
 
), 
 
renamed as (
 
select 
 
    ID, 
    FIRST_NAME,
    FULL_NAME,
    EMAIL,
    PHONE_NUMBER,
    ADDRESS_CITY,
    ADDRESS_STREET, 
    ADDRESS_HOUSE, 
    ADDRESS_ENTRANCE, 
    ADDRESS_FLOOR, 
    ADDRESS_OFFICE, 
    ADDRESS_COMMENT, 
    LOCATION_LATITUDE, 
    LOCATION_LONGITUDE, 
    AMOUNT_CHARGED, 
    USER_ID, 
    USER_AGENT, 
    CREATED_AT, 
    ADDRESS_DOORCODE
    
from source 
 
where AMOUNT_CHARGED >= 100
) 
 
select * from renamed