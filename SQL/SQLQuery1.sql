--Basariyla teslim edilmis siparislerin aylik bazda toplam siparis sayisini, 
--ürün ve kargo gelirlerini ve ortalama sepet tutarini hesaplayarak kronolojik bir performans raporu olusturdum.
WITH MonthlySales AS (
    SELECT
        YEAR(o.order_purchase_timestamp) AS OrderYear,
        MONTH(o.order_purchase_timestamp) AS OrderMonth,
        o.order_id,
        SUM(oi.price) AS ProductRevenue,
        SUM(oi.freight_value) AS FreightRevenue
    FROM orders o
    INNER JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
      AND o.order_purchase_timestamp IS NOT NULL
    GROUP BY
        YEAR(o.order_purchase_timestamp),
        MONTH(o.order_purchase_timestamp),
        o.order_id
)
SELECT
    OrderYear,
    OrderMonth,
    COUNT(*) AS TotalOrders,
    CAST(SUM(ProductRevenue) AS DECIMAL(14,2))
        AS ProductRevenue,
    CAST(SUM(FreightRevenue) AS DECIMAL(14,2))
        AS FreightRevenue,
    CAST(
        SUM(ProductRevenue + FreightRevenue) / COUNT(*)
        AS DECIMAL(14,2)
    ) AS AverageOrderValue
FROM MonthlySales
GROUP BY OrderYear, OrderMonth
ORDER BY OrderYear, OrderMonth;
