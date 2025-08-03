SELECT
        CUSTKEY,
        CustomerName,
        Address,
        NationKey,
        PhoneNumber,
        Accountbalance,
        MarketSegment,
        Comment
FROM {{ ref("stg_TPCH__CUSTOMER") }}
WHERE Accountbalance > 0