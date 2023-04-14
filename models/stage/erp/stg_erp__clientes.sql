
with
    fonte_clientes as (
        select
           *
        from {{ source('erp', 'customers') }}
    )
    , transformacoes as (
        select cast(customer_id as string) id_cliente
            , cast(contact_name as string) as nome_cliente
            , cast(company_name as string) as empresa_cliente
            , cast(address as string) as endereco_cliente
            , cast(postal_code as string) as cep_cliente
            , cast(city as string) as cidade_cliente
            , cast(region as string) as regiao_cliente
            , cast(country as string) as pais_cliente
        from fonte_clientes
    )

select *
from transformacoes