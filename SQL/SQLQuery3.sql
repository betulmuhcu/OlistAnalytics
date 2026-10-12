--Bu analizde olist platformunda hangi saticilarin en fazla gelir elde ettigini belirleyip, 
--ayrica satilan ürün adedini, siparis sayisini ve saticilarin gelir siralamasini hesapladim.
WITH SellerSales AS (
    SELECT
        s.seller_id,
        s.seller_city,
        COUNT(*) AS ItemsSold,
        COUNT(DISTINCT oi.order_id) AS TotalOrders,
        SUM(oi.price) AS TotalRevenue
    FROM sellers s
    INNER JOIN order_items oi
        ON s.seller_id = oi.seller_id
    INNER JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY
        s.seller_id,
        s.seller_city
)
SELECT
    seller_id,
    seller_city,
    ItemsSold,
    TotalOrders,
    CAST(TotalRevenue AS DECIMAL(14,2)) AS TotalRevenue,
    RANK() OVER (
        ORDER BY TotalRevenue DESC
    ) AS RevenueRank
FROM SellerSales
ORDER BY TotalRevenue DESC;

