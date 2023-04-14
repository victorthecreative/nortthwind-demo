with 
    fonte_fornecedores as (
        select * 
        from {{ source('erp', 'suppliers') }}
    )
    , transformacoes as (
        select 
            cast(supplier_id as int) id_fornecedor
            , cast(company_name as string) as nome_fornecedor
            , cast(contact_name as string) as contato_fornecedor
            --, contact_title
            , cast(address as string) as endereco_fornecedor
            , cast(postal_code as string) as cep_fornecedor
            , cast(city as string) as cidade_fornecedor
            , cast(region as string) as regiao_fornecedor
            , cast(country as string) as pais_fornecedor
        from fonte_fornecedores
    )
select * 
from transformacoes