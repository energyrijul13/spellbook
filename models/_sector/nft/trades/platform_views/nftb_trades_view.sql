
{{ config(
        schema = 'nftb',
        alias ='trades',
        materialized = 'view',
        post_hook='{{ expose_spells(\'["bnb"]\',
                                    "sector",
                                    "nft",
                                    \'["0xRob"]\') }}')
}}

SELECT *
FROM {{ ref('nft_trades') }}
WHERE project = "nftb"