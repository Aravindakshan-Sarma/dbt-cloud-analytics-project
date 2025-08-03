with 

source as (

    select * from {{ source('TPCH', 'CUSTOMER') }}

),

renamed as (

    select
        c_custkey as CUSTKEY,
        c_name as CustomerName,
        c_address as Address,
        c_nationkey as NationKey,
        c_phone as PhoneNumber,
        c_acctbal as Accountbalance,
        c_mktsegment as MarketSegment,
        c_comment as Comment

    from source

)

select * from renamed
