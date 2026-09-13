-- ============================================================
-- VIEW: Consolidação de Pedidos, Itens, Vendedores e Valores
-- ============================================================
CREATE OR REPLACE VIEW vw_pedidos_consolidados AS
SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    o.order_purchase_timestamp AS data_compra,
    o.order_delivered_customer_date AS data_entrega,
    o.order_estimated_delivery_date AS data_estimada,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    p.product_category_name AS categoria_produto,
    COALESCE(oi.price, 0) AS valor_produto,
    COALESCE(oi.freight_value, 0) AS valor_frete,
    (COALESCE(oi.price, 0) + COALESCE(oi.freight_value, 0)) AS valor_total_item,
    -- Cálculo de prazo de entrega em dias
    DATE_PART('day', o.order_delivered_customer_date - o.order_purchase_timestamp) AS dias_entrega_real,
    DATE_PART('day', o.order_estimated_delivery_date - o.order_purchase_timestamp) AS dias_entrega_estimado
FROM public.orders o
INNER JOIN public.order_items oi ON o.order_id = oi.order_id
LEFT JOIN public.products p ON oi.product_id = p.product_id;
