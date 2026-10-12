--Bu analizde hangi ürün kategorilerinin daha fazla gelir getirdigini ve
--kaç ürün satildigini hesapladim.
WITH CategorySales AS (
    SELECT
        COALESCE(
            pct.product_category_name_english,
            p.product_category_name,
            'Unknown'
        ) AS CategoryName,
        COUNT(*) AS ItemsSold,
        COUNT(DISTINCT oi.order_id) AS TotalOrders,
        SUM(oi.price) AS TotalRevenue
    FROM order_items oi
    INNER JOIN orders o
        ON oi.order_id = o.order_id
    INNER JOIN products p
        ON oi.product_id = p.product_id
    LEFT JOIN product_category_name_translation pct
        ON p.product_category_name =
           pct.product_category_name
    WHERE o.order_status = 'delivered'
    GROUP BY
        COALESCE(
            pct.product_category_name_english,
            p.product_category_name,
            'Unknown'
        )
)
SELECT
    CategoryName,
    ItemsSold,
    TotalOrders,
    CAST(TotalRevenue AS DECIMAL(14,2)) AS TotalRevenue,
    RANK() OVER (
        ORDER BY TotalRevenue DESC
    ) AS RevenueRank
FROM CategorySales
ORDER BY TotalRevenue DESC;
